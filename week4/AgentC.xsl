<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
   <lineup>
     <xsl:apply-templates />
   </lineup>
</xsl:template>

<xsl:template match="client">
<artist>
     <xsl:attribute name="id">
		<xsl:value-of select="data[@key='id']/@value"/>
     </xsl:attribute>
     <name><xsl:value-of select="data[@key='name']/@value"/> </name>
     <genres> <xsl:apply-templates select="data[@key='genre']"/> </genres>
     <writeup><xsl:value-of select="data[@key='description']/@value"/> </writeup>
     <gig>
       <day><xsl:apply-templates select="data[@key='performanceday']" /></day>
       <time><xsl:apply-templates select="data[@key='performancetime']" /></time>
     </gig>
     
     <photo> <xsl:value-of select="data[@key='picture']/@value"/> </photo>
</artist>     
     </xsl:template>
     
     <xsl:template match="data[@key='genre']">
     
         <genre><xsl:value-of select="substring-before(@value, '/')"/></genre>
         <genre><xsl:value-of select="substring-after(@value, '/')"/></genre>
         </xsl:template>
         
         <xsl:template match="data[@key='performanceday']">
         <day> <xsl:value-of select="upper-case(@value)"/></day>
         </xsl:template>
         
        <xsl:template match="data[@key='performancetime']">
        <start><xsl:value-of select="substring(@value,1,2)" />:00</start>
        <end><xsl:value-of select="substring(@value,6,2)" />:00</end>    
    </xsl:template>
      
     
     
     
     
     
 </xsl:stylesheet>

