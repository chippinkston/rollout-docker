<cfoutput>
	<h1>Admin Dashboard</h1>
	<div class="row">
		<div class="col-md-4">
			<div class="card card-inverse card-primary">
				<div class="card-header">
					<h1>Users<a href="#buildURL('admin:users')#" class="btn btn-outline-info btn-sm float-right">Manage</a></h1>
				</div>
				<div class="card-block">
					<h1 class="display-2 text-center">#rc.users.total#</h1>
				</div>
				<div class="card-footer">
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card card-inverse card-success">
				<div class="card-header">
					<h1>Status<a href="#buildURL('admin:users')#" class="btn btn-outline-info btn-sm float-right">Manage</a></h1>
				</div>
				<div class="card-block">
					<h1 class="display-2 text-center">#rc.users.total#</h1>
				</div>
				<div class="card-footer">
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card card-inverse card-info">
				<div class="card-header">
					<h1>Tests<a href="#buildURL('admin:users')#" class="btn btn-outline-secondary btn-sm float-right">Manage</a></h1>
				</div>
				<div class="card-block">
					<h1 class="display-2 text-center">#rc.users.total#</h1>
				</div>
				<div class="card-footer">
				</div>
			</div>
		</div>
	</div>
	<div class="row mt-4">
		<div class="col-md-4">
			<div class="card card-inverse card-warning">
				<div class="card-header">
					<h1>Features<a href="#buildURL('admin:features')#" class="btn btn-outline-secondary btn-sm float-right">Manage</a></h1>
				</div>
				<div class="card-block">
					<h1 class="display-2 text-center">#rc.users.total#</h1>
				</div>
				<div class="card-footer">
				</div>
			</div>
		</div>
	</div>
</cfoutput>
