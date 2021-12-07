<%@page import="db.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h2>Crear Rol</h2>
        <form method="post" name="frm_rol">
            <p>Nombre corto del rol:</p>
            <input type="text" name="rol_nombre">
            <p>Descripcion:</p>      
            <input type="text" name="rol_descripcion">
            <input name="btn_comando" type="submit" value="Insertar rol" formaction="index.jsp">   
       
    
            
        </form>
    </body>
</html>