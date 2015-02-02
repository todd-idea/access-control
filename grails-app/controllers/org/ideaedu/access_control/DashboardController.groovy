package org.ideaedu.access_control

import grails.plugin.springsecurity.annotation.Secured

/*
 * @author Todd Wallentine todd AT IDEAedu org
 */
@Secured("IS_AUTHENTICATED_FULLY")
class DashboardController {
    def index() {
    }
}