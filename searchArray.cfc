```coldfusion
<cfcomponent>

    <cffunction name="searchArray" access="public" returntype="numeric" output="false">
        <cfargument name="array" type="array" required="true">
        <cfargument name="value" type="any" required="true">
        
        <cfset var index = arrayFind(arguments.array, arguments.value)>
        
        <cfif index>
            <cfreturn index>
        <cfelse>
            <cfreturn -1>
        </cfif>
    </cffunction>

</cfcomponent>
```