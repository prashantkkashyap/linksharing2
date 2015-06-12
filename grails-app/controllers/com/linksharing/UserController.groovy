package com.linksharing

import com.UpdateProfileCommand
import grails.validation.Validateable

class UserController {


    def editProfile(UpdateProfileCommand updateProfileCO){
        User user=User.get(session['userId'])
        println("${user}")

        /*User user=User.get(session['userId'])
        user.firstName=updateProfileCO.firstName
        user.lastName=updateProfileCO.lastName
        user.userName=updateProfileCO.userName
        user.photo=updateProfileCO.photo
        user.save(flush:'true', failOnError: 'true')
       */
    }

    def registerHandler(RegisterValidatorCommand registerCO ) {
        User u = User.findByEmail(registerCO.email)
        if (u) {
            flash.message = "EmailID already exits ${registerCO.email}"
            redirect(controller: 'home', action: 'home')
        } else if (registerCO.password != registerCO.confirm) {
            flash.message = "Password do not match"
            redirect(controller: 'home', action: 'home')
        } else if (request.method == 'POST') {
            User user = new User(params)
            user.save(flush: true, failOnError: true)
            session['userId'] = user.id
            println "=============" + user.id + "====================="
            redirect(controller: 'dashboard', action: 'dashboard')
        }
    }
    /*def commandObj {RegisterValidatorCommand registerVlaidatorCO ->
    redirect (controller: 'home', action:'home')
    }*/
}
class RegisterValidatorCommand {
        String password
        String confirm
        String email

        static constrains = {
            password(validator: { val, obj, errors->
                if (val?.equals(obj.confirm)) {
                    errors.rejectValue('password','noMatch')
                }
            })

        }
}

