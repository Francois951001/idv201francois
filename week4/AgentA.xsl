<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <lineup>
     <xsl:apply-templates />
   </lineup>
</xsl:template>

<xsl:template match="band">
   <artist>
     <xsl:attribute name="id">
        <xsl:value-of select="@id" />
     </xsl:attribute>
     <name><xsl:value-of select="@name" /></name>
     <genres><xsl:apply-templates select="@genre" /></genres>
     <writeup><xsl:apply-templates select="description" /></writeup>
     <gig><xsl:apply-templates select="timeslot" /></gig>
     <photo><xsl:value-of select="photo" /></photo>
   </artist>
</xsl:template>

    <xsl:template match="@genre">
      <genre><xsl:value-of select="." /></genre> 
    </xsl:template>
    <xsl:template match="timeslot">
      <day><xsl:value-of select="upper-case(@day)" /></day>
      <time><xsl:apply-templates select="time" /></time> 
    </xsl:template>
    <xsl:template match="time">
      <start><xsl:value-of select="@start" />:00</start>
      <end><xsl:value-of select="@end" />:00</end>
    </xsl:template>

</xsl:stylesheet>