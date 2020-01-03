<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cdf="http://checklists.nist.gov/xccdf/1.1" xmlns:ocil2="http://scap.nist.gov/schema/ocil/2.0" xmlns:csv="csv:csv">
  <xsl:output method="text" encoding="iso-8859-1"/>

  <xsl:variable name="items" select="document($map-to-items)//*[cdf:reference]" />
  <xsl:variable name="title" select="document($map-to-items)/cdf:Benchmark/cdf:title" />
  <xsl:param name="profileId" select="'stig'"/>
  <xsl:param name="ocil-document" select="''"/>
  <xsl:variable name="profile" select="document($map-to-items)/cdf:Benchmark/cdf:Profile[@id=$profileId]"/>
  <xsl:variable name="selectedRules" select="$items[@id = $profile/cdf:select[@selected='true']/@idref]"/>
  <xsl:variable name="ocil" select="document($ocil-document)/ocil2:ocil"/>

  <xsl:variable name="delimiter" select="','" />
  <xsl:variable name="newLine" select="'&#xa;'" />
  <xsl:variable name="disa-ossrguri">https://public.cyber.mil/stigs/downloads/?_dl_facet_stigs=operating-systems%2Cgeneral-purpose-os</xsl:variable>
  <xsl:variable name="disa-srguri" select="$disa-ossrguri"/>


  <csv:columns>
    <column>CCI</column>
    <column>SRGID</column>
    <column>STIGID</column>
    <column>SRG Requirement</column>
    <column>Requirement</column>
    <column>SRG VulDiscussion</column>
    <column>VulDiscussion</column>
    <column>Status</column>
    <column>SRG Check</column>
    <column>Check</column>
    <column>SRG Fix</column>
    <column>Fix</column>
    <column>Severity</column>
    <column>Mitigation</column>
    <column>Artifact Description</column>
    <column>Status Justification</column>
  </csv:columns>

	<xsl:template match="/">
    <!-- Output the CSV header -->
    <xsl:for-each select="document('')/*/csv:columns/*">
      <xsl:value-of select="."/>
      <xsl:if test="position() != last()">
        <xsl:value-of select="$delimiter"/>
      </xsl:if>
    </xsl:for-each>

    <xsl:text>&#xa;</xsl:text>

    <xsl:apply-templates select=".//cdf:Rule" />
  </xsl:template>

  <xsl:template match="cdf:Rule">
    <xsl:variable name="disaRule" select="."/>
	  <xsl:variable name="currSrg" select="cdf:version"/>
    <xsl:variable name="relevantRules" select="$selectedRules[cdf:reference[@href=$disa-srguri and text()=$currSrg]]"/>

    <xsl:for-each select="$relevantRules">
	  	<xsl:call-template name="dataRow">
        <xsl:with-param name="disaRule" select="$disaRule"/>
        <xsl:with-param name="ssgRule" select="."/>
      </xsl:call-template>
    </xsl:for-each>
    <!-- TODO SRG RULEs without SSG RULEs -->
  </xsl:template>

  <xsl:template name="dataRow">
    <xsl:param name="disaRule"/>
    <xsl:param name="ssgRule"/>

    <xsl:for-each select="document('')/*/csv:columns/*">
      <!-- Extract the column name and value -->
      <xsl:variable name="column" select="."/>
      <xsl:variable name="value">
         <xsl:choose>
            <xsl:when test="$column='CCI'">
                <xsl:value-of select="$disaRule/cdf:ident"/>
            </xsl:when>
            <xsl:when test="$column='SRGID'">
                <xsl:value-of select="$disaRule/cdf:version"/>
            </xsl:when>
            <xsl:when test="$column='STIGID'">
                <xsl:value-of select="'TBD - Assigned by DISA after STIG release'"/>
            </xsl:when>
            <xsl:when test="$column='SRG Requirement'">
                <xsl:value-of select="$disaRule/cdf:title"/>
            </xsl:when>
            <xsl:when test="$column='Requirement'">
                <xsl:value-of select="$ssgRule/cdf:ident"/>:<xsl:value-of select="$ssgRule/cdf:title"/>
            </xsl:when>
            <xsl:when test="$column='SRG VulDiscussion'">
              <xsl:variable name="desc" select="$disaRule/cdf:description"/>
              <xsl:variable name="desc_info" select="substring-before($desc, '&lt;/VulnDiscussion&gt;')"/>
              <xsl:value-of select="substring-after($desc_info, '&lt;VulnDiscussion&gt;')"/>
            </xsl:when>
            <xsl:when test="$column='VulDiscussion'">
                <xsl:value-of select="$ssgRule/cdf:description"/>
            </xsl:when>
            <!--
                TODO
    <column>VulDiscussion</column>
    <column>Status</column>
    <column>SRG Check</column>
    <column>Check</column>
    <column>SRG Fix</column>
    <column>Fix</column>
    <column>Severity</column>
    <column>Mitigation</column>
    <column>Artifact Description</column>
    <column>Status Justification</column>
    -->
          </xsl:choose>
      </xsl:variable>

      <!-- Quote the value if required -->
      <xsl:choose>
        <xsl:when test="contains($value, '&quot;')">
          <xsl:variable name="x">
            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$value"/>
              <xsl:with-param name="replace" select="'&quot;'"/>
              <xsl:with-param name="by" select="'&quot;&quot;'"/>
            </xsl:call-template>
          </xsl:variable>
          <xsl:value-of select="concat('&quot;', $x, '&quot;')"/>
        </xsl:when>
        <xsl:when test="contains($value, $newLine)">
          <xsl:value-of select="concat('&quot;', $value, '&quot;')"/>
        </xsl:when>
        <xsl:when test="contains($value, $delimiter)">
          <xsl:value-of select="concat('&quot;', $value, '&quot;')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$value"/>
        </xsl:otherwise>
      </xsl:choose>

            <!-- Add the delimiter unless we are the last expression -->
            <xsl:if test="position() != last()">
                <xsl:value-of select="$delimiter"/>
            </xsl:if>
        </xsl:for-each>

        <!-- Add a newline at the end of the record -->
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

	<xsl:template name="extract-vulndiscussion">
		<xsl:param name="desc"/>
		<xsl:variable name="desc_info" select="substring-before($desc, '&lt;/VulnDiscussion&gt;')"/>
		<xsl:value-of select="substring-after($desc_info, '&lt;VulnDiscussion&gt;')"/>
	</xsl:template>

  <xsl:template name="string-replace-all">
    <xsl:param name="text"/>
    <xsl:param name="replace"/>
    <xsl:param name="by"/>
    <xsl:choose>
      <xsl:when test="contains($text,$replace)">
        <xsl:value-of select="substring-before($text,$replace)"/>
        <xsl:value-of select="$by"/>
        <xsl:call-template name="string-replace-all">
          <xsl:with-param name="text" select="substring-after($text,$replace)"/>
          <xsl:with-param name="replace" select="$replace"/>
          <xsl:with-param name="by" select="$by"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
