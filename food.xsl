<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<head>
			<title>Poverty &amp; Evaluation</title>
			<style type="text/css">
				body {
					font-family: Verdana, Geneva, "DejaVu Sans", sans-serif;
					font-height: 20px;
				}

				.heading {
					border-bottom: 1px solid #000;
				}

				.column {
					width: 150px;
					float: left;
				}

				.column-small {
					width: 100px;
					float: left;
				}

				.right {
					text-align: right;
				}

				.clear {
					clear: both;
				}
			</style>
		</head>
		<body>
			
			<div class="column heading"><strong>first-name</strong></div>
			<div class="column heading"><strong>last-name</strong></div>
			<div class="column heading"><strong>street</strong></div>
			<div class="column heading"><strong>city</strong></div>
			<div class="column heading"><strong>state</strong></div>
			<div class="column heading"><strong>country</strong></div>
			<div class="column heading"><strong>zip</strong></div>
			
			<div class="clear"></div>
			<xsl:for-each select="list/person">
					<div class="column"><xsl:value-of select="first-name"/></div>
					<div class="column"><xsl:value-of select="last-name"/></div>
					<div class="column"><xsl:value-of select="address"/></div>
					<div class="column"><xsl:value-of select="street"/></div>
					<div class="column"><xsl:value-of select="city"/></div>
					<div class="column"><xsl:value-of select="state"/></div>
					<div class="column"><xsl:value-of select="country"/></div>
					<div class="column"><xsl:value-of select="zip"/></div>
					
				<div class="clear"></div>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>