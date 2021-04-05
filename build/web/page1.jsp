<%-- 
    Document   : page1
    Created on : 5 de abr. de 2021, 12:20:37
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    /*if(session.getAttribute("session.username")==null){
        response.sendRedirect(request.getContextPath()+"/index.jsp");
        //out.println("<div>"+request.getContextPath()+"/index.jsp"+"</div>");
    }*/
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice - SessionWebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%if(session.getAttribute("session.username")==null){%>
            <div style='color:red'>Você não tem permissão para acessar esta página</div>
        <%}else{%>
            <h2>Página 1</h2>
            <p>Aplicação de demonstração do uso do HttpSession</p>
        <%}%>
    </body>
</html>
