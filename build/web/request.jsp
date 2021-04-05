<%-- 
    Document   : request
    Created on : 5 de abr. de 2021, 12:08:39
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("set")!=null){
        request.setAttribute("request.name", request.getParameter("name"));
        //response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JavaAttributes</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <h2>Atributo de Requisição</h2>
        <%if(request.getAttribute("request.name")!=null){%>
            <div>name: <%= request.getAttribute("request.name") %></div>
        <%}%>
        
        <form>
            <input type="text" name="name"/>
            <input type="submit" name="set" value="Set"/>
        </form>
        
    </body>
</html>