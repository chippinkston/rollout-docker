component name="main" accessors=true output=false{
	property userManager;

	public void function default(struct rc = {}) {
		rc.users = userManager.getAllUsers();

	}
}
