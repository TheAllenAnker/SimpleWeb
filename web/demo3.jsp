<%--
  Created by IntelliJ IDEA.
  User: Fenyr_Allen
  Date: 2018-09-20
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>Demo 3</title>
</head>
<body>
<%!
    public String getTime() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
        Date now = new Date();
        return formatter.format(now);
    }
%>
<%=getTime()%>
</body>
</html>
