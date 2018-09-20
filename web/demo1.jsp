<%--
  Created by IntelliJ IDEA.
  User: Fenyr_Allen
  Date: 2018-09-20
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo 1</title>
</head>
<body>
<%!
    String name = "Allen Anker";

    String getName() {
        return name;
    }
%>
<hr>
<%
    out.println(this.name);
%>
<hr>
<%=this.getName()%>
</body>
</html>
