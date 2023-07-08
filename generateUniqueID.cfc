```coldfusion
<cfcomponent>

    <cffunction name="generateUniqueID" access="public" returntype="string" output="false">
        <cfset var uniqueID = "" />
        <cfset var timestamp = getTickCount() />
        <cfset var randomValue = randRange(100000,999999) />

        <!--- Combine timestamp and random value to generate unique ID --->
        <cfset uniqueID = timestamp & randomValue />

        <cfreturn uniqueID />
    </cffunction>

</cfcomponent>
```