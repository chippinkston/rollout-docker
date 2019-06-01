<!DOCTYPE html>

<html>	
	<head>
		<title>Feature Flag (ColdFusion Rollout) App</title>
		<cfinclude template="/assets/css/css.cfm" />
		<cfinclude template="/assets/js/js-head.cfm" />
	</head>

	<body>
		<cfoutput>
			<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
				<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="##navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="#buildURL(':main.default')#">Rollout App (Feature Flag Demo)</a>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#buildURL(':main.default')#">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#buildURL('admin:main')#">Admin</a>
						</li>
					</ul>
					<form class="form-inline mt-2 mt-md-0">
						<input class="form-control mr-sm-2" type="text" placeholder="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
						<a href="#buildURL(':main.login')#" class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</a>
					</form>
				</div>
			</nav>
		</cfoutput>


		<div class="container-fluid">
			<cfoutput>#body#</cfoutput>
			<cfscript>
				app = new Application();
				dump(var=rc, expand=false, label="rc");
				dump(var=application, expand=false, label="application");
				dump(var=app.mappings, label="mappings", expand=false);
				dump(var=getBeanFactory().getBeanInfo(), expand=false, label="BeanFactory");
				dump(var=variables.framework, expand=false, label="variables.framework");
			</cfscript>

		</div>
		<footer class="footer">
			<cfoutput>
				<div class="container">
					<span class="text-muted">&copy; #dateFormat(now(), 'YYYY')#</span>
					<div class="row">
						<div class="col-md-6">
							<ul>
								<li><a href="#buildURL(':main.status')#">Status Report</a></li>
								<li><a href="#buildURL(':main.test')#">Test Runner</a></li>
							</ul>
						</div>
					</div>
				</div>
			</cfoutput>
		</footer>
		<cfinclude template="/assets/js/js-foot.cfm" />
	</body>
</html>
