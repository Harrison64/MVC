<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Crear funcionalidad</title>
    <link rel="stylesheet" href="../css/efi.css">
</head>
<body>
<h2>Funcionalidades</h2>
<form name="frm_funcionalidades" method="POST">

    <label>Nombre</label>
    <input type="text" name="nombre" placeholder="Nombre" />

    <label>Ruta</label>
    <input type="text" name="ruta" placeholder="Ruta"/>

    <label>Descrici&oacute;n</label>
    <input type="text" name="descripcion" placeholder="Descripción"/>

    <label>Módulo</label>
    <input type="text" name="modulo" placeholder="M&oacute;dulo"/>

    <input type="submit" name="btn_accion" value="Crear" formaction="pagina06.jsp" />
</form>
<%
    Conexion con;
    con = new Conexion();

    //Inserción
    String nombre_inser = request.getParameter("nombre");
    String ruta_inser = request.getParameter("ruta");
    String descripcion_inser = request.getParameter("descripcion");
    String mod_inser = request.getParameter("modulo");

    if (nombre_inser != null && descripcion_inser != null && ruta_inser != null){
        String strSqlFuninsert = "SELECT fun_id FROM funcionalidad ORDER BY fun_id DESC LIMIT 1";
        ResultSet sfd = con.consultarSql(strSqlFuninsert);
        sfd.next();
        String strSqlFuninsert2 = "INSERT INTO funcionalidad (fun_id,fun_nombre,fun_ruta,fun_descripcion,mod_id) VALUES("+(sfd.getInt("fun_id")+1)+",'"+nombre_inser+"','"+ruta_inser+"','"+descripcion_inser+"',"+mod_inser+")";
        ResultSet rsSmd = con.consultarSql(strSqlFuninsert2);

        nombre_inser = descripcion_inser = ruta_inser = null;
    }

    con.cerrar();
%>
</body>
</html>