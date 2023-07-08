```coldfusion
<cfcomponent>

    <cffunction name="generateQRCode" access="public" returntype="any" output="false">
        <cfargument name="inputString" type="string" required="true">
        <cfargument name="qrCodeSize" type="numeric" required="false" default="100">
        
        <cfset var qrCodeImage = "">
        <cfset var qrCodeGenerator = createObject("java", "com.google.zxing.qrcode.QRCodeWriter")>
        <cfset var matrix = qrCodeGenerator.encode(arguments.inputString, "QR_CODE", arguments.qrCodeSize, arguments.qrCodeSize)>
        <cfset var matrixToImageWriter = createObject("java", "com.google.zxing.client.j2se.MatrixToImageWriter")>
        
        <cftry>
            <cfset qrCodeImage = matrixToImageWriter.toBufferedImage(matrix)>
            <cfcatch type="any">
                <cfthrow message="Failed to generate QR code image.">
            </cfcatch>
        </cftry>
        
        <cfreturn qrCodeImage>
    </cffunction>

</cfcomponent>
```