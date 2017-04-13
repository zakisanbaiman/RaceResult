<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" %>

<html>
<head>
<title>2011 F1日本グランプリ 決勝結果表</title>
</head>

<body>
<h1>2011 F1日本グランプリ 決勝結果表</h1>

<tr>
<td>Pos.</td><td>No.</td><td>Driver</td><td>Total Time</td>
</tr>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/test?" +
        "user=root&password=root&useUnicode=true&characterEncoding=utf-8");
    Statement st=conn.createStatement();
    ResultSet res = st.executeQuery("select * from result");

    while(res.next()){
        out.println("<tr>");
        out.println("<td>" + res.getString("Pos.") + "</td>");
        out.println("<td>" + res.getString("No.") + "</td>");
        out.println("<td>" + res.getString("Driver") + "</td>");
        out.println("<td>" + res.getString("Total Time") + "</td>");
        out.println("</tr>");
    }
    st.close();
    conn.close();

%>
</table>
</body>
</html>
