<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" indent="yes"/>
<xsl:template match="/">

<html>
<head>
   <title>Bootszubehoer</title>
</head>
<body>
   <header>
       <img src="https://cdn.pixabay.com/photo/2013/07/12/18/06/sailer-152989_1280.png" width="256 px"/>
       <h1>Bootszubehoer</h1>
   </header>

   <table border="1" width="768 px">
       <tr>
           <th colspan="2">Grunddaten</th>
       </tr>
       <tr>
           <td width="125 px">Name</td>
           <td><xsl:value-of select="boot/@name"/></td>
       </tr>
       <tr>
           <td>Bootstyp</td>
           <td><xsl:value-of select="boot/@bootstyp"/></td>
       </tr>
       <tr>
           <td>Hersteller</td>
           <td><xsl:value-of select="boot/@hersteller"/></td>
       </tr>
       <tr>
           <td>Modell</td>
           <td><xsl:value-of select="boot/@modell"/></td>
       </tr>
       <tr>
           <td>Besitzer</td>
           <td></td>
       </tr>
       <tr>
           <td>Tiefgang</td>
           <td><xsl:value-of select="boot/@tiefgang"/></td>
       </tr>
       <tr>
           <td>Fuehrerschein</td>
           <td><xsl:value-of select="boot/@fuehrerschein"/></td>
       </tr>
   </table>
   <table border="1" width="768 px">
       <tr>
           <th>Ersatzteile</th>
           <th>Zubehoer</th>
       </tr>
       <tr>
           <td>
               <table border="0" width="370 px">
                   <tr>
                       <td width="65 px">Name</td>
                       <td></td>
                   </tr>
                   <tr>
                       <td>Preis</td>
                       <td></td>
                   </tr>
                   <tr>
                       <td>Vorraussetzung</td>
                       <td></td>
                   </tr>
               </table>
           </td>
           <td>
               <table border="0" width="370 px">
                   <tr>
                       <td width="65 px">Name</td>
                       <td></td>
                   </tr>
                   <tr>
                       <td>Preis</td>
                       <td></td>
                   </tr>
                   <tr>
                       <td>Vorraussetzung</td>
                       <td></td>
                   </tr>
               </table>
           </td>
       </tr>
   </table>
   <footer>
       <p>Bearbeiter:<br/>Andreas Schwörer<br/>Klaus-Peter Schillinger<br/>Manfred von Teichman</p>
   </footer>
</body>
</html>

</xsl:template>
</xsl:stylesheet>