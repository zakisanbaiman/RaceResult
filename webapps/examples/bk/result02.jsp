<%@ page contentType="text/html; charset=utf-8" %>

<jsp:useBean id="user" class="sample.RaceResult" />

<html>
    <head>
    	<title>JSPサンプル</title>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Sample</title>
        <!-- BootstrapのCSS読み込み -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- jQuery読み込み -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- BootstrapのJS読み込み -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form method="POST" action="result02.jsp">
            ユーザID： <input type="text" name="userId"> <br>
            ユーザ名： <input type="text" name="userName"> <br>
            <input type="submit" value="送信">
        </form><br>

        <% request.setCharacterEncoding("Shift_JIS"); %>
        <%=user.getResponse() %>
        <% int count = user.getCountList(); %>
        <br>
		<div class="container">
            <table class="table">
    			<thead>
    				<tr>
    					<td>Result</td>
    					<td>CarNumber</td>
    					<td>Name</td>
    					<td>Team</td>	
    				</tr>
    			</thead>
    			<tbody>
                <% for (int i = 0; i < count; i++) { %>
                    <tr>
    					<td><%=user.getResult().get(i)%></td>
                        <td><%=user.getId().get(i)%></td>
                        <td><%=user.getName().get(i)%></td>
                        <td><%=user.getTeam().get(i)%></td>
                    </tr>
                <% } %>
    			</tbody>
            </table>
		</div>

 <br>

    </body>
</html>
