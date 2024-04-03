<%--
  Created by IntelliJ IDEA.
  User: realyoon77
  Date: 2024-04-03
  Time: PM 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>5_response</title>
</head>
<body>
    <%
        String menuName = (String) request.getAttribute("menuName");
        int amount = (int) request.getAttribute("amount");
        int orderPrice = (int) request.getAttribute("orderPrice");
    %>
    <h3>주문하신 음식 : <%= menuName%></h3><br>
    <h3>주문하신 수량 : <%= amount%></h3><br>
    <h3>결제하실 금액 : <%= orderPrice%></h3>
</body>
</html>
