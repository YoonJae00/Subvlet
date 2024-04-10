<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Today</title>
</head>
<body>
    <%
        Date today = new Date();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 a hh시 mm분 ss초 SSS");

        String output = sdf.format(today);

    %>

    <h3><%= output%></h3>

    <%
        String a = Arrays.toString(Base64.getEncoder().encode("yoonjae".getBytes()));
        String a1 = Arrays.toString(Base64.getDecoder().decode(a));
    %>

    <h2><%= a %>
        <%= a1%>
    </h2>

</body>
</html>
