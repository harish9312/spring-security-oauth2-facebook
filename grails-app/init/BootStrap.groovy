
class BootStrap {

    def init = { servletContext ->

        com.demo.LoginNew.User admin = new com.demo.LoginNew.User(username: 'harish', password: 'harish', enabled: 'true').save()
        com.demo.LoginNew.Role role = new com.demo.LoginNew.Role(authority:'ROLE_USER').save()
        com.demo.LoginNew.UserRole.create(admin, role)
        def destroy = {
    }
}
}