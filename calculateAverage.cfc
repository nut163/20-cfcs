```coldfusion
<cfcomponent>

    <cffunction name="calculateAverage" access="public" returntype="numeric" output="false">
        <cfargument name="numbers" type="array" required="true">
        
        <cfset var total = 0>
        <cfset var average = 0>
        
        <cfloop array="#arguments.numbers#" index="i">
            <cfset total += i>
        </cfloop>
        
        <cfset average = total / arrayLen(arguments.numbers)>
        
        <cfreturn average>
    </cffunction>

</cfcomponent>
```