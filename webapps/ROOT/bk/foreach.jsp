<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <title>JSPサンプル</title>
  </head>
  <body>
    <c:forEach var="item" begin="1" end="10">
      ${item}
    </c:forEach> 
  </body>
</html>
