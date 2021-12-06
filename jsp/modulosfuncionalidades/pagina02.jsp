<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title>Crear m&oacute;dulo</title>
</head>
<body>
    <h2>M&oacute;dulos</h2>
    <form name="frm_modulos" method="post">
      <label>Nombre</label>
      <input type="text" name="nombre" placeholder="Nombre"/>
      <label>Descripci&oacute;n</label>
      <input type="text" name="descripcion" placeholder="Descripci&oacute;n"/>
      <input type="submit" name="btn_accion" value="Crear" formaction="pagina02.jsp"/>


    </form>
<%
        Conexion con;
        con = new Conexion();

        //Inserción
        String nombre_inser = request.getParameter("nombre");
        String descripcion_inser = request.getParameter("descripcion");


        if (nombre_inser != null && descripcion_inser != null){
            String strSqlMod = "SELECT mod_id FROM modulo ORDER BY mod_id DESC LIMIT 1";
            ResultSet smd = con.consultarSql(strSqlMod);
            smd.next();
            String strSqlModinsert = "INSERT INTO modulo (mod_id,mod_nombre,mod_descripcion) VALUES("+(smd.getInt("mod_id")+1)+",'"+nombre_inser+"','"+descripcion_inser+"')";
            ResultSet rsSmd = con.consultarSql(strSqlModinsert);

            nombre_inser = descripcion_inser = null;
        }
        con.cerrar();
        %>
</body>
</html>