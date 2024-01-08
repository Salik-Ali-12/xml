<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/stationers">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Document</title>
            </head>
            <body>
                <table border="2">
                   <tr><th colspan="6" bgcolor="lightgreen">Falcon Stationers</th></tr>
                    <tr bgcolor="yellow">
                        <th>Product id</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Price per Unit</th>
                        <th>Price per Dozen</th>
                        <th>In Stock</th>
                    </tr>
                    <xsl:for-each select="data">
                        <xsl:if test="unit &lt; 50">
                            <tr bgcolor="green">
                                <td>
                                    <xsl:value-of select="P_id"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="P_name"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="quantity"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="unit"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="dozen"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="stock"></xsl:value-of>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>