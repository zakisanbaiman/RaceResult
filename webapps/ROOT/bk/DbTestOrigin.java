import java.sql.*;
import java.io.*;

class DbTestOrigin {
    public static void main(String[] args) { 
               
        int id;
        String name;
        try {
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
            String sql = "SELECT * FROM staff";
            ResultSet rs = stmt.executeQuery (sql);
            // テーブル照会結果を出力
            while(rs.next()){
                id = rs.getInt("id");
                name = rs.getString("name");
                System.out.println("ID：" + id);
                System.out.println("名前：" + name);
            }
            // データベースのクローズ
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("SQL failed.");
            e.printStackTrace ();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace ();
        }
    }
}


