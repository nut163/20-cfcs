```coldfusion
<cfcomponent>

    <cffunction name="calculateDistance" access="public" returntype="numeric" output="false">
        <cfargument name="lat1" type="numeric" required="true">
        <cfargument name="lon1" type="numeric" required="true">
        <cfargument name="lat2" type="numeric" required="true">
        <cfargument name="lon2" type="numeric" required="true">

        <cfset var radius = 6371> <!-- Radius of the earth in km -->
        <cfset var dLat = deg2rad(arguments.lat2-arguments.lat1)>
        <cfset var dLon = deg2rad(arguments.lon2-arguments.lon1)>
        <cfset var a = sin(dLat/2) * sin(dLat/2) + cos(deg2rad(arguments.lat1)) * cos(deg2rad(arguments.lat2)) * sin(dLon/2) * sin(dLon/2)>
        <cfset var c = 2 * atan2(sqrt(a), sqrt(1-a))>
        <cfset var distance = radius * c> <!-- Distance in km -->

        <cfreturn distance>
    </cffunction>

    <cffunction name="deg2rad" access="private" returntype="numeric" output="false">
        <cfargument name="deg" type="numeric" required="true">
        <cfreturn arguments.deg * (3.14159265358979323846/180)>
    </cffunction>

</cfcomponent>
```