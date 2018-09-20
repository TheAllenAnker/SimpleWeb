<%--
  Created by IntelliJ IDEA.
  User: Fenyr_Allen
  Date: 2018-09-20
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo 2</title>
</head>
<body>
<%
    int i = 10;
%>
<%
    if(i < 10) {
        out.println("i < 10");
    } else {
        out.println("i >= 10");
    }
%>
</body>
</html>
