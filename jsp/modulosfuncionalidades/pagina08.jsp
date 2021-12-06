<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Actualizar funcionalidad</title>
    <link rel="stylesheet" href="../css/efi.css">
</head>
<body>
<%
    String fun_id = request.getParameter("fun_id");
%>
<h2>Funcionalidades</h2>
<form name="frm_funcionalidades" method="POST">
    <input type="hidden" name="fun_id" value="<%=fun_id%>"/>
    <label>Nombre</label>
    <input type="text" name="nombre" placeholder="Nombre" />
    <label>Ruta</label>
    <input type="text" name="ruta" placeholder="Ruta"/>
    <label>Descrici&oacute;n</label>
    <input type="text" name="descripcion" placeholder="Descripción"/>
    <label>Módulo</label>
    <input type="text" name="modulo" placeholder="M&oacute;dulo"/>
    <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina08.jsp" />
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
        String strSqlFuninsert2 = "UPDATE funcionalidad SET fun_id = "+fun_id+",fun_nombre = '"+nombre_inser+"',fun_ruta = '"+ruta_inser+"',fun_descripcion = '"+descripcion_inser+"',mod_id = "+mod_inser+" WHERE fun_id = "+fun_id;
        ResultSet rsSmd = con.consultarSql(strSqlFuninsert2);
        nombre_inser = descripcion_inser = ruta_inser = null;
    }

    con.cerrar();
%>
</body>
</html>