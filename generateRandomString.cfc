```coldfusion
<cfcomponent>

    <cffunction name="generateRandomString" access="public" returntype="string" output="false">
        <cfargument name="length" type="numeric" required="true">
        
        <cfset var randomString = "">
        <cfset var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789">
        
        <cfloop index="i" from="1" to="#arguments.length#">
            <cfset randomString = randomString & mid(chars, randRange(1, len(chars)), 1)>
        </cfloop>
        
        <cfreturn randomString>
    </cffunction>

</cfcomponent>
```