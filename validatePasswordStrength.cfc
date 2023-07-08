```coldfusion
<cfcomponent>

    <cffunction name="validatePasswordStrength" access="public" returntype="string">
        <cfargument name="password" type="string" required="true">
        <cfargument name="criteria" type="struct" required="true">
        
        <cfset var passwordStrength = "Weak">
        
        <cfif len(arguments.password) gte criteria.minLength>
            <cfset passwordStrength = "Medium">
        </cfif>
        
        <cfif len(arguments.password) gte criteria.minLength and 
               reFind("[A-Z]", arguments.password) and 
               reFind("[a-z]", arguments.password) and 
               reFind("[0-9]", arguments.password) and 
               reFind("[\W]", arguments.password)>
            <cfset passwordStrength = "Strong">
        </cfif>
        
        <cfreturn passwordStrength>
    </cffunction>

</cfcomponent>
```