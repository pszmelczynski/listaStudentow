<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
  <html>
  <body bgcolor="black">
    <h2>Lista Studentow</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Imie</th>
        <th>Nazwisko</th>
        <th>nr Indeksu</th>
        <th>Kierunek</th>
        <th>SredniaOcen</th>
      </tr>
      <xsl:for-each select="listaStudentow/student">
      <tr>
        <xsl:choose>
            <xsl:when test=" kierunek = 'Informatyka' or kierunek = 'Matematyka' or kierunek = 'Fizyka'">
                <td bgcolor="pink"><xsl:value-of select="imie" /></td>
                <td bgcolor="pink"><xsl:value-of select="nazwisko" /></td>
                <td bgcolor="pink"><xsl:value-of select="nrIndeksu" /></td>
                <td bgcolor="pink"><xsl:value-of select="kierunek" /></td>
            </xsl:when>
            <xsl:otherwise>
                <td bgcolor="#00CED1"><xsl:value-of select="imie" /></td>
                <td bgcolor="#00CED1"><xsl:value-of select="nazwisko" /></td>
                <td bgcolor="#00CED1"><xsl:value-of select="nrIndeksu" /></td>
                <td bgcolor="#00CED1"><xsl:value-of select="kierunek" /></td>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="sredniaOcen &gt; 3">
                <td bgcolor="green"><xsl:value-of select="sredniaOcen" /></td>
            </xsl:when>
            <xsl:otherwise>
                <td bgcolor="red"><xsl:value-of select="sredniaOcen" /></td>
            </xsl:otherwise>
        </xsl:choose>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>