component accessors=true {

	property beanFactory;
	property userManager;

	public void function default(struct rc = {}) {
		rc.userResult = userManager.getAllUsers();
	}

	public void function add(struct rc = {}) {
		
	}

	public void function details(struct rc = {}) {
		
	}
}
