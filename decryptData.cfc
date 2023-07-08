```coldfusion
<cfcomponent>

    <cffunction name="decryptData" access="public" returntype="string" output="false">
        <cfargument name="encryptedData" type="string" required="true">
        <cfargument name="algorithm" type="string" required="true">
        
        <cfset var decryptedData = "">
        
        <cftry>
            <cfset decryptedData = decrypt(encryptedData, generateKey(algorithm), algorithm)>
            <cfcatch type="any">
                <cfthrow message="An error occurred while decrypting data.">
            </cfcatch>
        </cftry>
        
        <cfreturn decryptedData>
    </cffunction>

</cfcomponent>
```