```coldfusion
<cfcomponent>

    <cffunction name="encryptData" access="public" returntype="string" output="false">
        <cfargument name="data" type="string" required="true">
        <cfargument name="algorithm" type="string" required="true">
        
        <cfset var encryptedData = "">
        
        <cftry>
            <cfset encryptedData = Encrypt(arguments.data, generateKey(), arguments.algorithm)>
            <cfreturn encryptedData>
            
            <cfcatch type="any">
                <cfthrow message="Encryption failed" detail="#cfcatch.message#">
            </cfcatch>
        </cftry>
    </cffunction>
    
    <cffunction name="generateKey" access="private" returntype="string" output="false">
        <cfset var key = createUUID()>
        <cfreturn key>
    </cffunction>

</cfcomponent>
```