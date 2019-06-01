component accessors=true {
	property featuresService;
	property systemGatewayService;

	public void function default(struct rc = {}) {
		//rc.features = featuresService.getFeatures();
		rc.sysGwy=systemGatewayService;
	}

	public void function toggle(struct rc = {}) {
		
	}

	//TODO Make save function persist to file once service exists.
	public any function save(struct rc = {}) {
		var saveResult={status=true, sysMsg="Feature Flags Saved."};
//		variables.fw.renderData(data=local.saveResult, type="json");
		dump(local);
		abort;
	}
}
