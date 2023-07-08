```coldfusion
<cfcomponent>

    <cffunction name="validateCreditCard" access="public" returntype="boolean" output="false">
        <cfargument name="creditCardNumber" type="string" required="true">
        
        <cfset var cardNumber = Trim(arguments.creditCardNumber)>
        <cfset var total = 0>
        <cfset var length = Len(cardNumber)>
        <cfset var parity = length MOD 2>
        
        <cfloop index="i" from="1" to="#length#">
            <cfset var digit = Mid(cardNumber, i, 1)>
            <cfif i MOD 2 EQ parity>
                <cfset digit = digit * 2>
                <cfif digit > 9>
                    <cfset digit = digit - 9>
                </cfif>
            </cfif>
            <cfset total = total + digit>
        </cfloop>
        
        <cfreturn total MOD 10 EQ 0>
    </cffunction>

</cfcomponent>
```