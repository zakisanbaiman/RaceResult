package sample;
import java.sql.*;
import java.awt.List;
import java.io.*;
import java.util.ArrayList;

public class GetRaceResult {

    private String userId = "＜未設定＞";
    
    private ArrayList<String> id = new ArrayList<String>();
    private ArrayList<String> name = new ArrayList<String>();
    private ArrayList<String> team = new ArrayList<String>();
    private ArrayList<String> result = new ArrayList<String>();
    private int countList = 0;
    
    public ArrayList<String> getId() { return id; }
    public ArrayList<String> getName() { return name; }
    public ArrayList<String> getTeam() { return team; }
    public ArrayList<String> getResult() { return result; }
    public int getCountList() { return countList; }
    public String getResponse() { return main(); }

    
    //    public void setName(String[] s) { name = s; }
    
    // private String userName = main();
    // private String[][] results =  main();

    public String main() {
        
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
            String sql = "SELECT * FROM 2011MonacoGP";
            ResultSet rs = stmt.executeQuery (sql);
            
            // テーブル照会結果を出力
            while(rs.next()){
            	id.add(rs.getString("id"));
            	name.add(rs.getString("name"));
            	team.add(rs.getString("team"));
            	result.add(rs.getString("result"));
            	countList++;
            }
            
            // データベースのクローズ
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("SQL failed.");
            e.printStackTrace ();
            return "SQL failed.";
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace ();
            return "ClassNFE";
        }
    return "retuuuuuuun!";
    }
    
//    public String getUserId() { return userId; }
//    public void setUserId(String s) { userId = s; }
//

//    public void setUserName(String s) { userName = main(); }

}
