package org.ideaedu.access_control

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

/*
 * @author Todd Wallentine todd AT IDEAedu org
 */
@Secured("IS_AUTHENTICATED_FULLY")
class DashboardController {
    def index() {

    	/* TODO Should the choice of page title be in the view (gsp) instead of the controller since it is a display decision? -todd 02Feb2015 */
    	def pageTitle = "Dashboard"
    	if(SpringSecurityUtils.ifAllGranted("ROLE_ADMIN")) {
    		pageTitle = "IDEA Administrator Dashboard"
    	} else if(SpringSecurityUtils.ifAllGranted("ROLE_STAFF")) {
    		pageTitle = "IDEA Staff Dashboard"
    	}

    	render(view: "index", model: [ pageTitle: pageTitle])
    }
}