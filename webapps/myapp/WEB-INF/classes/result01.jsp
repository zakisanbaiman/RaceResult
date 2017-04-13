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
    // JDBCドライバの登録
    String driver   = "org.gjt.mm.mysql.Driver";
    // データベースの指定
    String server   = "localhost";      // MySQLサーバ ( IP または ホスト名 )
    String dbname   = "test";         // データベース名
    String url = "jdbc:mysql://" + server + "/" + dbname + "?useUnicode=true&characterEncoding=EUC_JP";
    String user     = "root";         // データベース作成ユーザ名
    String password = "root";     // データベース作成ユーザパスワード
    Class.forName (driver);
    // データベースとの接続
    Connection con = DriverManager.getConnection(url, user, password);
    // テーブル照会実行
    Statement stmt = con.createStatement ();
    String sql = "SELECT * FROM 2011MonacoGP";
    ResultSet rs = stmt.executeQuery (sql);

    while(rs.next()){
        out.println("<tr>");
        out.println("<td>" + rs.getString("Driver") + "</td>");
        out.println("</tr>");
    }
    // データベースのクローズ
    rs.close();
    stmt.close();
    con.close();

%>
</table>
</body>
</html>
