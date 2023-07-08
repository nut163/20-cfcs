```coldfusion
<cfcomponent>

    <cffunction name="generateHash" access="public" returntype="string" output="false">
        <cfargument name="inputString" type="string" required="true">
        <cfargument name="algorithm" type="string" required="true">
        
        <cfset var hashValue = "">
        
        <cftry>
            <cfset hashValue = hash(ARGUMENTS.inputString, ARGUMENTS.algorithm)>
            <cfreturn hashValue>
            
            <cfcatch type="any">
                <cfthrow message="Error generating hash value" detail="#cfcatch.message#">
            </cfcatch>
        </cftry>
    </cffunction>

</cfcomponent>
```