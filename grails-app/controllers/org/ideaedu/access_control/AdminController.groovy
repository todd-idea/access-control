package org.ideaedu.access_control

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {
    def index() {
    }
}