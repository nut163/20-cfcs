```coldfusion
<cfcomponent>

    <cffunction name="retrieveDataFromAPI" access="public" returntype="any" output="false">
        <cfargument name="apiURL" type="string" required="true">
        
        <cfset var httpService = "" />
        <cfset var result = {} />
        
        <cftry>
            <cfhttp url="#arguments.apiURL#" method="get" result="httpService">
            <cfcatch>
                <cfthrow message="Failed to retrieve data from API.">
            </cfcatch>
            </cfhttp>
            
            <cfif httpService.StatusCode eq "200 OK">
                <cfset result = DeserializeJSON(httpService.FileContent) />
            <cfelse>
                <cfthrow message="Failed to retrieve data from API. Status code: #httpService.StatusCode#">
            </cfif>
            
            <cfreturn result />
        </cftry>
    </cffunction>

</cfcomponent>
```