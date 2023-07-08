```coldfusion
<cfcomponent>

    <cffunction name="generatePDF" access="public" returntype="any" output="false">
        <cfargument name="htmlContent" type="string" required="true">
        
        <cfset var pdfDocument = "">
        <cfset var pdfName = generateUniqueID() & ".pdf">
        
        <!--- Generate the PDF document from the HTML content --->
        <cfdocument format="pdf" name="pdfDocument">
            #arguments.htmlContent#
        </cfdocument>
        
        <!--- Save the PDF document to a file --->
        <cffile action="write" file="#ExpandPath('./')##pdfName#" output="#ToBinary(pdfDocument)#">
        
        <!--- Return the path to the generated PDF document --->
        <cfreturn ExpandPath('./') & pdfName>
    </cffunction>

</cfcomponent>
```