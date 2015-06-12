package com.linksharing

class ResourceController {

       def viewPost(){
           User user = User.get(session['userId'])
           Topic.findAllByCreatedBy(user)

       }



}
