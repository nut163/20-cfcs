```coldfusion
<cfcomponent>

    <cffunction name="generateThumbnail" access="public" returntype="any" output="false">
        <cfargument name="imageFile" type="string" required="true">
        <cfargument name="size" type="numeric" required="true">
        
        <cfset var imageObj = "" >
        <cfset var thumbnail = "" >
        
        <!--- Load the image --->
        <cfimage action="read" source="#arguments.imageFile#" name="imageObj">
        
        <!--- Resize the image --->
        <cfimage action="resize" source="#imageObj#" destination="#getThumbnailPath(arguments.imageFile)#" width="#arguments.size#" height="#arguments.size#" overwrite="true">
        
        <!--- Return the path of the thumbnail --->
        <cfreturn getThumbnailPath(arguments.imageFile)>
    </cffunction>
    
    <cffunction name="getThumbnailPath" access="private" returntype="string">
        <cfargument name="imagePath" type="string" required="true">
        
        <cfset var thumbnailPath = "" >
        
        <!--- Generate the path for the thumbnail --->
        <cfset thumbnailPath = listDeleteAt(arguments.imagePath, listLen(arguments.imagePath, "."), ".") & "_thumb." & listLast(arguments.imagePath, ".")>
        
        <cfreturn thumbnailPath>
    </cffunction>

</cfcomponent>
```