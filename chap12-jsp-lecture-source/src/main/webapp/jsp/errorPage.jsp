
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>ErrorPage</title>
</head>
<body>
    <h1 style="background-color: red; color: white">에러 발생!</h1>
    <%
        String exceptionType = exception.getClass().getName();
        String exceptionMessage = exception.getMessage();
    %>

    <h1><%= exceptionType %></h1>
    <hr>
    <h1><%= exceptionMessage %></h1>
</body>
</html>
