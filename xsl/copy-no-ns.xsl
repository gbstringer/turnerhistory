<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

   <xsl:template match="*">
      <xsl:element name="{name()}" namespace="{namespace-uri()}"><xsl:apply-templates select="@*|node()"/></xsl:element>
   </xsl:template>

   <xsl:template match="@*|text()|comment()|processing-instruction()">
      <xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
   </xsl:template>

   
<!--   
   
   <xsl:template match="node() | @* | @xml:id">
        <xsl:copy>
            <xsl:apply-templates select="@* | node() | @xml:id" />
        </xsl:copy>
    </xsl:template>

-->

</xsl:stylesheet>
