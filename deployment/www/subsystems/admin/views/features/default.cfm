<cfoutput>
	<h2>Application Features</h2>

	<table class="table thead-dark table-striped table-bordered">
		<thead>
			<tr>
				<th>Flag Key</th>
				<th>Name</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<!---<cfloop array="#rc.features.features#" index="feature">--->
				<!---<tr>--->
					<!---<td>#feature.key#</td>--->
					<!---<td>#feature.name#</td>--->
					<!---<td>#feature.status#</td>--->
				<!---</tr>--->
			<!---</cfloop>--->
		</tbody>
	</table>

	<button class="btn btn-primary pull-right" id="saveFlags" name="saveFlags">Save</button>

	<!---<script src='/assets/js/admin/featureFlags.js' />--->

</cfoutput>
