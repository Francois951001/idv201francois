<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <lineup>
     <xsl:apply-templates />
   </lineup>
</xsl:template>





<xsl:template match="artist">
<artist>
	<xsl:attribute name="id">
		<xsl:value-of select='number(translate(id,"BCD","456")) +100' />
    </xsl:attribute>
    <name><xsl:value-of select="name" /></name>
    <genres><xsl:apply-templates select="genres" /></genres>
    <writeup><xsl:apply-templates select="description" /></writeup>
    <gig><xsl:apply-templates select="time" /></gig>
    <photo><xsl:value-of select="photo" /></photo>
   </artist>
</xsl:template>

<xsl:template match="g">
      <genres><xsl:value-of select="." /></genres> 
    </xsl:template>
    
    <xsl:template match="time">
      <day><xsl:value-of select="day" /></day>
      <time>
      	<start><xsl:value-of select="substring(time,1,5)" /></start>
        <end><xsl:value-of select="substring(time,7,5)" /></end>
      </time> 
    </xsl:template>

</xsl:stylesheet>
