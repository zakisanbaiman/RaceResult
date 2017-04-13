<%@ page contentType="text/html; charset=utf-8" %>

<jsp:useBean id="user" class="sample.RaceResult" />

<html>
<head>
	<title>Input Form</title>
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
    
    <div class="page-header">
        <h1>&nbsp;Input Form</h1>
    </div>  
</head>
<body>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script type="text/javascript">
    $(function() {
        $("#insert").click(function(){
            $.ajax({
                type: "POST",
                url: "/sample",
                data: {
                    "page": 2
                },
                success: function(j_data){
                	alert("success!");
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                	alert("ng...");
                 },
                 complete : function(data) {
                     // alert("complete!");
                 }
            });
        });
    });
    </script>
    <form class="form-horizontal" action="/RequestParamExample/" method="post">
        <%-- id --%>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">id</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail3" placeholder="id" style="width:80%">
            </div>
        </div>
        <%-- name --%>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail3" placeholder="name" style="width:80%">
            </div>
        </div>
        <%-- team --%>
        <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">team</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail3" placeholder="team" style="width:80%">
            </div>
        </div>
        <%-- result --%>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">result</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail3" placeholder="result" style="width:80%">
            </div>
        </div>
        <%-- submit --%>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button id=insert type="button" onclick="lf_insert('aa')" class="btn btn-primary">Insert</button>&nbsp;                
            </div>
        </div>
    </form>
</body>
</html>
