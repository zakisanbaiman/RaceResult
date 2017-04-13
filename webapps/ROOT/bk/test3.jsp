<%@ page contentType="text/html; charset=utf-8" %>

<jsp:useBean id="user" class="sample.User" />

<html>
    <head>
    <title>JSPサンプル</title>
    </head>
    <body>
        <form method="POST" action="test3.jsp">
            ユーザID： <input type="text" name="userId"> <br>
            ユーザ名： <input type="text" name="userName"> <br>
            <input type="submit" value="送信">
        </form><br>

        <% request.setCharacterEncoding("Shift_JIS"); %>
        <jsp:setProperty name="user" property="*" />

        ユーザID： <jsp:getProperty name="user" 
                                    property="userId" /> <br>
        ユーザ名： <jsp:getProperty name="user" 
                                    property="userName" /> <br>

    </body>
</html>
