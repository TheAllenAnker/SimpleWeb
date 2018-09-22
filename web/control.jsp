<%@ page import="com.allen_anker.bean.Employee" %>
<%@ page import="com.allen_anker.db.DBUtils" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Fenyr_Allen
  Date: 2018-09-20
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <%
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Employee employee = new Employee(account, null, password, null);
        Map<String, Employee> employees = DBUtils.employees;
        if (DBUtils.isValidAccount(employee)) {
    %>
    <h3 align="center">Welcome to HR Management System</h3>
    <hr>
    <table align="center" border="1">
        <tr>
            <td>Account</td>
            <td>Name</td>
            <td>Password</td>
            <td>Email</td>
        </tr>
        <%
            for (String key : employees.keySet()) {
                Employee e = employees.get(key);
        %>
        <tr>
            <td><%=e.getAccount()%></td>
            <td><%=e.getName()%></td>
            <td><%=e.getPassword()%></td>
            <td><%=e.getEmail()%></td>
        </tr>
        <%
            }
        %>
    </table>
    <%
    } else {
        out.println("<h3 align=\"center\">Invalid Account</h3>");
    }
    %>
</body>
</html>
