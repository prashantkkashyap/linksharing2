package com

import grails.validation.Validateable

/**
 * Created by prashant on 12/6/15.
 */
@Validateable
class UpdateProfileCommand {
    String firstName
    String lastName
    String userName
    byte[] photo
}
