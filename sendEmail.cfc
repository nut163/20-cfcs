```coldfusion
<cfcomponent>

    <cffunction name="sendEmail" access="public" returntype="boolean" output="false">
        <cfargument name="recipient" type="string" required="true">
        <cfargument name="subject" type="string" required="true">
        <cfargument name="message" type="string" required="true">

        <cfset var mailService = createObject("component", "mailService")>

        <cftry>
            <cfmail to="#arguments.recipient#" from="noreply@yourdomain.com" subject="#arguments.subject#">
                #arguments.message#
            </cfmail>

            <cfset mailService.logEmail(arguments.recipient, arguments.subject, arguments.message)>
            <cfreturn true>
        <cfcatch type="any">
            <cfreturn false>
        </cfcatch>
        </cftry>
    </cffunction>

    <cffunction name="logEmail" access="private" returntype="void" output="false">
        <cfargument name="recipient" type="string" required="true">
        <cfargument name="subject" type="string" required="true">
        <cfargument name="message" type="string" required="true">

        <!--- Log the email details for auditing purposes. This is a stub and should be replaced with actual logging code. --->
    </cffunction>

</cfcomponent>
```