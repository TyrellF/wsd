<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/onlineVoting">
    <html>
        <body>
            <h2>ONLINE VOTING SYSTEM</h2>
            <table border="1">
                <caption>Voter list</caption>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Aadhar no</th>
                    <th>Phone</th>
                    <th>Gender</th>
                    <th>Party Voted</th>
                </tr>
                <xsl:for-each select="voters/voter">
                    <tr>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="age"></xsl:value-of></td>
                        <td><xsl:value-of select="aadhar"></xsl:value-of></td>
                        <td><xsl:value-of select="phone"></xsl:value-of></td>
                        <td><xsl:value-of select="gender"></xsl:value-of></td>
                        <td><xsl:value-of select="partyVoted"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
            <table border="1">
                <caption>candidate list</caption>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Aadhar no</th>
                    <th>Phone</th>
                    <th>Gender</th>
                    <th>Party Voted</th>
                </tr>
                <xsl:for-each select="candidates/candidate">
                    <tr>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="age"></xsl:value-of></td>
                        <td><xsl:value-of select="aadhar"></xsl:value-of></td>
                        <td><xsl:value-of select="phone"></xsl:value-of></td>
                        <td><xsl:value-of select="gender"></xsl:value-of></td>
                        <td><xsl:value-of select="party"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
            <table border="1">
                <caption>admin list</caption>
                <tr>
                    <th>username</th>
                    <th>password</th>
                </tr>
                <xsl:for-each select="admins/admin">
                    <tr>
                        <td><xsl:value-of select="username"></xsl:value-of></td>
                        <td><xsl:value-of select="password"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>