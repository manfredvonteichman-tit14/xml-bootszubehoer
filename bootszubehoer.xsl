<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" indent="yes"/>
<xsl:template match="/boot">

<html>
<head>
   <title>Bootszubehoer</title>
</head>
<body>
   <header>
       <img src="https://cdn.pixabay.com/photo/2013/07/12/18/06/sailer-152989_1280.png" width="256 px"/>
       <h1>Bootszubehoer</h1>
   </header>

   <table border="1" width="816 px">
       <tr>
           <th colspan="2">Grunddaten</th>
       </tr>
       <tr>
           <td width="125 px">Name</td>
           <td><xsl:value-of select="@name"/></td>
       </tr>
       <tr>
           <td>Bootstyp</td>
           <td><xsl:value-of select="@bootstyp"/></td>
       </tr>
       <tr>
           <td>Hersteller</td>
           <td><xsl:value-of select="@hersteller"/></td>
       </tr>
       <tr>
           <td>Modell</td>
           <td><xsl:value-of select="@modell"/></td>
       </tr>
       <tr>
           <td>Tiefgang</td>
           <td><xsl:value-of select="@tiefgang"/></td>
       </tr>
       <tr>
           <td>Führerschein</td>
           <td><xsl:value-of select="@fuehrerschein"/></td>
       </tr>
   </table>
   
   <br/>
   
   <table border="1" width="816 px">
   		<tr>
           <th colspan="2">Liegeplatz</th>
       	</tr>
       	<tr>
           <td width="125 px">Hafenname</td>
           <td><xsl:value-of select="hafen/@name"/></td>
       </tr>
       <tr>
           <td >Platz</td>
           <td><xsl:value-of select="hafen/@platz"/></td>
       </tr>
       <tr>
           <td>Straße</td>
           <td>
               <xsl:value-of select="hafen/adresse/strasse"/>
               <xsl:text> </xsl:text> 
               <xsl:value-of select="hafen/adresse/hausnummer"/>
           </td>
       </tr>       
       <tr>
           <td>Ort</td>
           <td><xsl:value-of select="hafen/adresse/stadt"/></td>
       </tr>
       <tr>
           <td>PLZ</td>
           <td><xsl:value-of select="hafen/adresse/postleitzahl"/></td>
       </tr>
   </table>
   
   <table border="1" width="816 px">
       <tr>
           <th colspan="2">Besitzer</th>
       </tr>
       <tr>
           <td width="125 px">Name</td>
           <td><xsl:value-of select="besitzer/@name"/>, <xsl:value-of select="besitzer/@vorname"/></td>
       </tr>
       <tr>
           <td>Straße</td>
           <td>
               <xsl:value-of select="besitzer/adresse/strasse"/>
               <xsl:text> </xsl:text> 
               <xsl:value-of select="besitzer/adresse/hausnummer"/>
           </td>
       </tr>
       <tr>
           <td>Ort</td>
           <td><xsl:value-of select="besitzer/adresse/stadt"/></td>
       </tr>
       <tr>
           <td>PLZ</td>
           <td><xsl:value-of select="besitzer/adresse/postleitzahl"/></td>
       </tr>
   </table>
 
   <br/> 
 
   <table border="1" width="816 px">
       <tr>
           <th>Ersatzteile</th>
           <th>Zubehoer</th>
       </tr>
       <tr valign="top">
           <td>
               <table width="400 px">
                   <xsl:for-each select="ersatzteile/ersatzteil">
                     <tr>
                       <td width="65 px">Name: </td>
                       <td><xsl:value-of select="@name"/></td>
                     </tr>
                     <tr>
                       <td>Preis: </td>
                       <td><xsl:value-of select="@preis"/><xsl:text> €</xsl:text></td>
                     </tr>
                     <tr>
                       <xsl:if test="voraussetzung">
                         <td>Voraussetzung: </td>
                         <td>
                           <xsl:for-each select="voraussetzung">
                             <xsl:if test="@typ = 'lizenz'">
                               <xsl:text>Lizenz: </xsl:text>
                             </xsl:if>
                             <xsl:if test="@typ = 'bootstyp'">
                               <xsl:text>Bootstyp: </xsl:text>
                             </xsl:if>
                             <xsl:value-of select="@name"/>
                             <br/>
                           </xsl:for-each>
                         </td>
                       </xsl:if>
                     </tr>
                     <xsl:if test="position() != last()">
                     <tr>
                       <td colspan="2">
                         <hr/>
                       </td>
                     </tr>
                     </xsl:if>
                   </xsl:for-each>  
               </table>
           </td>
           <td>
               <table width="400 px">
                   <xsl:for-each select="zubehoerteile/zubehoerteil">
                     <tr>
                       <td width="65 px">Name: </td>
                       <td><xsl:value-of select="@name"/></td>
                     </tr>
                     <tr>
                       <td>Preis: </td>
                       <td><xsl:value-of select="@preis"/><xsl:text> €</xsl:text></td>
                     </tr>
                     <tr>
                       <xsl:if test="voraussetzung">
                         <td>Voraussetzung: </td>
                         <td>
                           <xsl:for-each select="voraussetzung">
                             <xsl:if test="@typ = 'lizenz'">
                               <xsl:text>Lizenz: </xsl:text>
                             </xsl:if>
                             <xsl:if test="@typ = 'bootstyp'">
                               <xsl:text>Bootstyp: </xsl:text>
                             </xsl:if>
                             <xsl:value-of select="@name"/>
                             <br/>
                           </xsl:for-each>
                         </td>
                       </xsl:if>
                     </tr>
                     <xsl:if test="position() != last()">
                     <tr>
                       <td colspan="2">
                         <hr/>
                       </td>
                     </tr>
                     </xsl:if>
                   </xsl:for-each>
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