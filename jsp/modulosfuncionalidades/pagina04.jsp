<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title>Actualizar m&oacute;dulo</title>
</head>
<body>
<%
    String mod_id = request.getParameter("mod_id");
%>

<h2>Modulos</h2>
<form name="frm_modulos" method="POST">
    <input type="hidden" name="mod_id" value="<%=mod_id%>"/>
    <label>Nombre</label>
    <input type="text" name="nombre" placeholder="Nombre"/>
    <label>Descripci&oacute;n</label>
    <input type="text" name="descripcion" placeholder="Descripci&oacute;n"/>
    <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina04.jsp"/>


</form>
<%
    Conexion con;
    con = new Conexion();

    //Inserción
    String nombre_update = request.getParameter("nombre");
    String descripcion_update = request.getParameter("descripcion");


    if (nombre_update != null && descripcion_update != null){
        String strSqlModUpdate = "UPDATE modulo SET mod_nombre = '"+nombre_update+"', mod_descripcion = '"+descripcion_update+"' WHERE mod_id = "+mod_id+"";
        ResultSet rsSmd = con.consultarSql(strSqlModUpdate);
        nombre_update = descripcion_update = null;
    }
    con.cerrar();
%>
</body>
</html>