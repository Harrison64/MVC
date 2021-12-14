<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.Conexion"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
        <title>Usuarios</title>
    </head>
    <body> 
        
        <h1>Gestion de usuarios</h1>
       
            <form name="frm_roles" method="post">
            <label for="buscar">Buscar</label>
            <input type="text" name="buscar" placeholder="Texto a buscar" value="" >
            <label for="criterio">Por</label> 
            <select name="criterio">          
                <option value="1">Nombres</option>
                <option value="2">Apeliidos</option>
                <option value="3">Identificacion</option>
            </select>
                <input type="submit" value="Buscar" name="btn_comando" formaction=" pagina02.jsp" />
            </form>
    </body>
</html>