<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs xd tei"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Apr 13, 2016</xd:p>
            <xd:p><xd:b>Author:</xd:b> gbstring</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:include href="copy-no-ns.xsl"/>
    
    <xsl:template match="tei:name[@type='place']">
        <placeName>
            <xsl:if test="@key">
                <xsl:attribute name="ref"><xsl:value-of select="@key"/></xsl:attribute>
            </xsl:if>
            <xsl:if test="@ref">
                <xsl:attribute name="ref"><xsl:value-of select="@ref"/></xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </placeName>
    </xsl:template>
    
    
    <xsl:template match="tei:name">
        <persName>
            <xsl:if test="@key">
                <xsl:attribute name="ref"><xsl:value-of select="@key"/></xsl:attribute>
            </xsl:if>
            <xsl:if test="@ref">
                <xsl:attribute name="ref"><xsl:value-of select="@ref"/></xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </persName>
    </xsl:template>
    
</xsl:stylesheet>