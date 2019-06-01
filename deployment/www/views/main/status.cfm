<cfoutput>
    <h1>Status:</h1>
    <div class="row">
        <div class="card card-inverse card-primary">
            <div class="card-header">
                <h5>Redis</h5>
            </div>
            <div class="card-block">
                <cfhttp url="http://redis:6379" result="redisStatus">
                <cfdump var="#redisStatus#">
            </div>
        </div>
    </div>
</cfoutput>
