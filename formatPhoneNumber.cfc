```coldfusion
<cfcomponent>

    <cffunction name="formatPhoneNumber" access="public" returntype="string" output="false">
        <cfargument name="phoneNumber" type="string" required="true">
        
        <!--- Remove all non-numeric characters from the phone number --->
        <cfset var cleanedNumber = reReplace(arguments.phoneNumber, "\D", "", "all")>
        
        <!--- Check if the cleaned number has the correct length for a US phone number --->
        <cfif len(cleanedNumber) neq 10>
            <cfthrow message="Invalid phone number. Please enter a 10-digit US phone number.">
        </cfif>
        
        <!--- Format the phone number in the standard US format (###) ###-#### --->
        <cfset var formattedNumber = "(" & left(cleanedNumber, 3) & ") " & mid(cleanedNumber, 4, 3) & "-" & right(cleanedNumber, 4)>
        
        <!--- Return the formatted phone number --->
        <cfreturn formattedNumber>
    </cffunction>

</cfcomponent>
```