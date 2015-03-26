<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<xsl:for-each select="lineup/artist">
			<xsl:result-document method="html" href="artist{@id}output.html">
				<xsl:copy-of select="."/>
			</xsl:result-document> 
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet> 