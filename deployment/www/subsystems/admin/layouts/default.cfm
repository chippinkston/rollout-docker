<cfoutput>
    <div class="row">
        <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link<cfif listFirst(listLast(rc.action, ':'), '.') == 'main'> active</cfif>" href="#buildURL('admin:main')#">Dashboard <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<cfif listFirst(listLast(rc.action, ':'), '.') == 'users'> active</cfif>" href="#buildURL('admin:users')#">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<cfif listFirst(listLast(rc.action, ':'), '.') == 'status'> active</cfif>" href="#buildURL('admin:status')#">Status</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<cfif listFirst(listLast(rc.action, ':'), '.') == 'tests'> active</cfif>" href="#buildURL('admin:tests')#">Tests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<cfif listFirst(listLast(rc.action, ':'), '.') == 'features'> active</cfif>" href="#buildURL('admin:features')#">Features</a>
                </li>
            </ul>
        </nav>
        <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
            <cfif structKeyExists(rc, 'sysMsg')>
                <div class="alert alert-info">
                    ##rc.sysMsg##
                </div>
            </cfif>
            #body#
        </main>
    </div>
</cfoutput>
