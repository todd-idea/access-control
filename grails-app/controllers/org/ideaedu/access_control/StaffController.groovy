package org.ideaedu.access_control

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_STAFF'])
class StaffController {
    def index() {
    }
}