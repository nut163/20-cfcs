```coldfusion
<cfcomponent>

    <cffunction name="calculateAge" access="public" returntype="numeric" output="false">
        <cfargument name="dateOfBirth" type="date" required="true">
        
        <cfset var currentDate = Now()>
        <cfset var age = DateDiff("yyyy", arguments.dateOfBirth, currentDate)>
        
        <!--- Check if the person had their birthday this year already --->
        <cfif Month(currentDate) LT Month(arguments.dateOfBirth) OR (Month(currentDate) EQ Month(arguments.dateOfBirth) AND Day(currentDate) LT Day(arguments.dateOfBirth))>
            <cfset age = age - 1>
        </cfif>
        
        <cfreturn age>
    </cffunction>

</cfcomponent>
```