<%@page import="java.sql.ResultSet"%>
<%@page import="db.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title> roles 01   </title>
</head>
<body>          
            <h2>Modificar rol</h2>
            <form method="POST" name="frm_rol">
                <input type="hidden" name="rol_id" value="">
                <label for="Nombre">Nombre:</label><input name="Nombre" type="text" >
                <label for="Nombre">Descripcion:</label><input type="text" name="rol_descripcion" size="25">
                <input name="btn_comando" type="submit" value="Enviar Nuevo" formaction="index.jsp"><input type="reset" value="Borrar">
                <%

                String rol_nombre = request.getParameter("rol_nombre");
                String rol_descripcion = request.getParameter("rol_descripcion");
                if (rol_nombre != null && rol_descripcion != null) {
                    String sqlIngresar = "insert into rol (rol_nombre, rol_descripcion) "
                            + "values ('" + rol_nombre + "','" + rol_descripcion + "')";

                    Conexion c = new Conexion();
                    int r = c.ejecutarSql(sqlIngresar);

                    response.sendRedirect("index.jsp");
                }
            %>
             
            </form>
</body>
 </html>