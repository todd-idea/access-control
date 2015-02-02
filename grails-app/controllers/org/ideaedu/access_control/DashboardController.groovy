package org.ideaedu.access_control

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

/**
 * The DashboardController provides a dashboard view for users. The dashboard contents will depend upon the
 * type of user (their role) and the data that is available to them. For example, an IDEA Administrator will
 * have see different information than IDEA Staff.
 *
 * @author Todd Wallentine todd AT IDEAedu org
 */
 @Secured("IS_AUTHENTICATED_FULLY")
class DashboardController {
    def index() {
		if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
			redirect url: "/admin"
		} else if (SpringSecurityUtils.ifAllGranted('ROLE_STAFF')) {
			redirect url: "/staff"
		} else {
			redirect url: '/'
		}
    }
}