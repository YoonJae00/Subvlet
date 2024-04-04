
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 성공 !!!</title>
</head>
<body>
    <h1>성공!!!!</h1>
    <%
        String userName = (String) request.getAttribute("userName");
    %>
    <h2><%=userName%>님 환영합니다!!</h2>
</body>
</html>
