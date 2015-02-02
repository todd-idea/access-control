import org.ideaedu.access_control.Role
import org.ideaedu.access_control.User
import org.ideaedu.access_control.UserRole

class BootStrap {

    def init = { servletContext ->
    	initUsers()
    }

    def destroy = {
    }

    def initUsers() {
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def staffRole = new Role(authority: 'ROLE_STAFF').save(flush: true)

		// Create an example Admin user
		def todd = new User(username: 'todd', password: 'tool13')
		todd.save(flush: true)
		UserRole.create todd, adminRole, true

		// Create an example Staff user
		def kari = new User(username: 'kari', password: 'tool13')
		kari.save(flush: true)
		UserRole.create kari, staffRole, true
    }
}