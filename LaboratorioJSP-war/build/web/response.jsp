<%-- 
    Document   : response
    Created on : Sep 15, 2021, 5:30:57 PM
    Author     : mateo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="clock" class="java.util.Date" />
        <jsp:useBean id="mybean" scope="session" class="co.edu.unipiloto.eventHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <jsp:setProperty name="mybean" property="date" />
    <c:choose>
        <c:when test="${clock.hours<12}">
            Buenos días
        </c:when>
        <c:when test="${clock.hours>12&&clock.hours<18}">
            Buenos tardes
        </c:when>
        <c:when test="${clock.hours>18&&clock.hours<24}">
            Buenas noches
        </c:when>
    </c:choose>
    <jsp:getProperty name="mybean" property="name" />
    tu edad es 
    <jsp:getProperty name="mybean" property="date" />
</body>
</html>
