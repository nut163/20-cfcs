```coldfusion
<cfcomponent>

    <cffunction name="convertCurrency" access="public" returntype="numeric" output="false">
        <cfargument name="amount" type="numeric" required="true">
        <cfargument name="fromCurrency" type="string" required="true">
        <cfargument name="toCurrency" type="string" required="true">
        
        <cfset var convertedAmount = 0>
        <cfset var exchangeRate = getExchangeRate(fromCurrency, toCurrency)>
        
        <cfset convertedAmount = amount * exchangeRate>
        
        <cfreturn convertedAmount>
    </cffunction>
    
    <cffunction name="getExchangeRate" access="private" returntype="numeric" output="false">
        <cfargument name="fromCurrency" type="string" required="true">
        <cfargument name="toCurrency" type="string" required="true">
        
        <cfset var exchangeRate = 0>
        <cfset var apiURL = "https://api.exchangerate-api.com/v4/latest/" & fromCurrency>
        
        <cfhttp url="#apiURL#" method="get" result="httpResponse">
        
        <cfif httpResponse.statusCode eq "200 OK">
            <cfset exchangeRate = deserializeJSON(httpResponse.fileContent).rates[toCurrency]>
        </cfif>
        
        <cfreturn exchangeRate>
    </cffunction>

</cfcomponent>
```