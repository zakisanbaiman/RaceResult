/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.CookieFilter;
import util.HTMLFilter;

import java.sql.*;
import java.io.*;

/**
 * Example servlet showing request headers
 *
 * @author James Duncan Davidson <duncan@eng.sun.com>
 */

public class InsertResult extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private static final ResourceBundle RB = ResourceBundle.getBundle("LocalStrings");

    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
    	// 日本語を表示するので、charsetにUTF-8を指定
    	response.setContentType("text/html; charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Result</title>");
        out.println("<div class=\"page-header\">");
        out.println("	<h1>&nbsp;Result</h1>");
        out.println("</div>");
        out.println("<link href=\"/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">");
        out.println("</head>");
        out.println("<body style=\"margin:30px;\">");
    	
    	String id = request.getParameter("id");
    	String name = request.getParameter("name");
    	String team = request.getParameter("team");
    	String result = request.getParameter("result");
    	out.println("<h2>Your request has been sent.</h1>");
    	out.println("id : " + id);
    	out.println("<br>");
        out.println("name : " + name);
        out.println("<br>");
        out.println("team : " + team);
        out.println("<br>");
        out.println("result : "  + result);
        out.println("<br>");

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
            out.println("Connection OK. <br>");
            // テーブル照会実行
            Statement stmt = con.createStatement ();
            String sql = "INSERT INTO 2011MonacoGP (id, name, team, result) VALUES "
            		+ "(" + id + ", '" + name + "', '" + team + "', " + result + ");";
            int resultCount = stmt.executeUpdate(sql);
            out.println("SQL Execute OK. <br>");

            // データベースのクローズ
            stmt.close();
            con.close();
            out.println("All OK. <br>");
            out.println("Insert has completed. <br>");
        } catch (SQLException e) {
        	out.println("SQLException:" + e.getMessage() + "<br>");
            e.printStackTrace ();
        } catch (ClassNotFoundException ex) {
        	out.println("ClassNotFound. <br>");
            ex.printStackTrace ();
        }
        out.println("<hr>");
        out.println("<button id=\"new\" type=\"button\" ");
        out.println("onclick=\"window.location.href=\'http://150.95.131.219:8080/ResultList.jsp\';\" ");
        out.println("class=\"btn btn-default\">Return Result List</button>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    public void doPost(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        doGet(request, response);
    }

}

