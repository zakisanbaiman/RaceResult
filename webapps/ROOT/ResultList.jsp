<%@ page contentType="text/html; charset=utf-8" %>

<jsp:useBean id="user" class="sample.RaceResult" />

<html>
    <head>
    	<title>Race Result</title>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Sample</title>
        <!-- BootstrapのCSS読み込み -->
        <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- jQuery読み込み -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- BootstrapのJS読み込み -->
        <script src="/bootstrap/js/bootstrap.min.js"></script>
        
        <div class="page-header">
            <h1>&nbsp;Race Result</h1>
        </div>
    </head>
    <body>
        <% request.setCharacterEncoding("Shift_JIS"); %>
        <% user.getResponse(); %>
        <% int count = user.getCountList(); %>
        <br>
		<div class="container table-responsive">
            <table class="table table-hover table-striped">
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
        <div style="margin-left:30px;">
            <button id=new type="button"
                    onclick="window.location.href = 'http://150.95.131.219:8080/examples/InputForm.jsp';" 
                    class="btn btn-success">New
            </button>
        </div>
 <br>

    </body>
</html>
