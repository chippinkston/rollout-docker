<cfoutput>
	<h1>Users</h1>
	<table class="table table-bordered table-hover table-sm">
		<thead>
			<tr>
				<th>ID</th>
				<th>username</th>
				<th>email</th>
				<th>source</th>
				<th>admin</th>
			</tr>
		</thead>
		<tbody>
			<cfloop array="#rc.userResult.users#" index="user">
				<tr>
					<td>#user.getID()#</td>
					<td>#user.getName()#</td>
					<td>#user.getEmail()#</td>
					<td>#user.getSource()#</td>
					<td><a href="#buildURL('admin:users.details')#&id=#user.getid()#" class="btn btn-sm btn-info">edit</a>
						<a href="#buildURL('admin:users.delete')#&id=#user.getid()#" class="btn btn-sm btn-danger">delete</a>
					</td>
				</tr>
			</cfloop>
		</tbody>
	</table>
</cfoutput>
