<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
<style type="text/css">
  table tr td{
     <!-- border-top:1px solid #000; -->
     padding:5px;
     margin:0;
  }
  table tr td sup{
    color:blue;
  }
 </style>
</head>
  <body>
  <h2>3 John <xsl:value-of select="/c/@n"/></h2>
  <table>
    <xsl:for-each select="c/v">
      <tr>
        <td>
          <sup><xsl:value-of select="position()"/></sup>
          <xsl:value-of select="text()"/>
        </td>
      </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>