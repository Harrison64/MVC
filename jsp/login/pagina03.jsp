<!-- 
    Document   : pagina03
    Created on : 23/04/2021, 10:39:02 a. m.
    Author     : USUSARIO
----------->

<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="/css/efi.css">
    </head>

    <body>
        <%
        String rol_id;    
        rol_id = request.getParameter("rol_id");
        %>
        
        <h1>Menu</h1>
        <p>rol_id: <%=rol_id%></p>

        <h4>Funcionalidades a las que se tiene acceso este rol: </h4>
          
        <ul> 
            <h4>Modulo 1</h4>
            <li><a href="../login/index.jsp"> Login </a></li>
            <li><a href="../usuarios/index.jsp">Gestion de usuarios</a></li>
            <li><a href="../modululosfuncionalidad/index.jsp">Gestion de modulos y funcionalidades</a></li>
            <li><a href="../roles/index.jsp">Gestion de roles</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 01</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 02</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 03</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 04</a></li>
        </ul>
        <ul>
            <h4>Modulo 2</h4>
            <li><a href="../login/index.jsp">Funcionalidad 01</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 02</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 03</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 04</a></li>
        </ul>
        <ul>
            <h4>Modulo k...</h4>
            <li><a href="../login/index.jsp">Funcionalidad 01</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 02</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 03</a></li>
            <li><a href="../login/index.jsp">Funcionalidad 04</a></li>
        </ul>
        <ul>
            <h4>Modulo n..</h4>
            <li><a href="./login/index.jsp">Funcionalidad 01</a></li>
            <li><a href="./login/index.jsp">Funcionalidad 02</a></li>
            <li><a href="./login/index.jsp">Funcionalidad 03</a></li>
            <li><a href="./login/index.jsp">Funcionalidad 04</a></li>
        </ul>
    
    </body>
</html>
