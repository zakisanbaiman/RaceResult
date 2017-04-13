<%@ page contentType="text/html; charset=utf-8" %>

<jsp:useBean id="user" class="sample.User" />

<html>
    <head>
        <title>JSPサンプル</title>
    </head>
    <body>

        <jsp:setProperty name="user" property="userId" 
                         value="001" />
        <jsp:setProperty name="user" property="userName" 
                         value="テスト" />

        ユーザID： <jsp:getProperty name="user" 
                                    property="userId" /> <br>
        ユーザ名： <jsp:getProperty name="user" 
                                    property="userName" /> <br>
        
    </body>
</html>
