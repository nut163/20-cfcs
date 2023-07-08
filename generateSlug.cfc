```coldfusion
<cfcomponent>

    <cffunction name="generateSlug" access="public" returntype="string" output="false">
        <cfargument name="inputString" type="string" required="true">
        
        <cfset var slug = "">
        
        <!--- Remove special characters and replace spaces with hyphens --->
        <cfset slug = REReplaceNoCase(arguments.inputString, "[^a-zA-Z0-9-]", "", "ALL")>
        <cfset slug = REReplaceNoCase(slug, "[\s]", "-", "ALL")>
        
        <!--- Convert to lowercase --->
        <cfset slug = LCase(slug)>
        
        <!--- Remove leading and trailing hyphens --->
        <cfset slug = REReplaceNoCase(slug, "^-+|-+$", "", "ALL")>
        
        <cfreturn slug>
    </cffunction>

</cfcomponent>
```