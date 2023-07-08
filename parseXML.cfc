```coldfusion
<cfcomponent>

    <cffunction name="parseXML" access="public" returntype="any" output="false">
        <cfargument name="xmlString" type="string" required="true">
        
        <cfset var parsedXML = "">
        
        <cftry>
            <cfset parsedXML = XmlParse(arguments.xmlString)>
            <cfcatch type="any">
                <cfthrow message="Failed to parse XML string.">
            </cfcatch>
        </cftry>
        
        <cfreturn parsedXML>
    </cffunction>

</cfcomponent>
```