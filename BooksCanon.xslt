<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match="/">
  <html>
			<head>
				<title>test</title>
				<meta charset="utf-8"/>
			</head>
      <style>
        th {
          text-align: left;
        }
      </style>
			<body>
        <table border="1">
          <tr bgcolor="lightblue">
            <th>Title</th>
            <th>Edition</th>
            <th>Author firstname</th>
            <th>Author lastname</th>
            <th>Price</th>
            <th>Comments</th>
          </tr>
          <xsl:for-each select="booksCanon/book">
          <xsl:sort select="title" order="descending"/>  
          <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="edition"/></td>
            <td><xsl:value-of select="authors/author/firstname"/></td>
            <td><xsl:value-of select="authors/author/lastname"/></td>
            <td><xsl:value-of select="price"/> usd</td>
            <td><xsl:value-of select="comments/comment"/> usd</td>
          </tr>
          </xsl:for-each>
        </table>
			</body>
		</html>
</xsl:template>
</xsl:stylesheet>
