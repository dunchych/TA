<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="text" encoding="iso-8859-1"/>  
<xsl:template match = "/"> 

<xsl:variable name="app" select="//application/@name"/>
<xsl:variable name="WAS_icon" select="'https://github.com/dunchych/TA/blob/master/images/WAS.png'"/>
<xsl:variable name="MQ_icon" select="'https://github.com/dunchych/TA/blob/master/images/MQ.png'"/>
<xsl:variable name="DB2_icon" select="'https://github.com/dunchych/TA/blob/master/images/DB2.png'"/>
<xsl:variable name="WAS_bg" select="'#dae8fc'"/>
<xsl:variable name="WAS_fg" select="'#6c8ebf'"/>
<xsl:variable name="MQ_bg" select="'#DBBFF0'"/>
<xsl:variable name="MQ_fg" select="'#6c8ebf'"/>
<xsl:variable name="DB2_bg" select="'#d5e8d4'"/>
<xsl:variable name="DB2_fg" select="'#6c8ebf'"/>

<xsl:value-of select="$app" />,,,,<xsl:value-of select="$WAS_bg"/>, <xsl:value-of select="$WAS_fg"/>, <xsl:value-of select="$WAS_icon"/>, <xsl:text>&#10;</xsl:text>
<xsl:for-each select = "//jmsQueueConnectionFactory/properties.wmqJms"> 

    <xsl:value-of select = "@queueManager"/>, <xsl:value-of select="$app" />,<xsl:value-of select = "@hostName"/>,<xsl:value-of select = "@port"/>,<xsl:value-of select="$MQ_bg"/>, <xsl:value-of select="$WAS_fg"/>, <xsl:value-of select="$MQ_icon"/> <xsl:text>&#10;</xsl:text>

</xsl:for-each>
<xsl:for-each select = "//dataSource/properties.db2.jcc"> 
    
    <xsl:value-of select = "@databaseName"/>,<xsl:value-of select="$app" />,<xsl:value-of select = "@serverName"/>,<xsl:value-of select = "@portNumber"/>, <xsl:value-of select="$DB2_fg"/>, <xsl:value-of select="$DB2_bg"/>, <xsl:value-of select="$DB2_icon"/> <xsl:text>&#10;</xsl:text>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>   

