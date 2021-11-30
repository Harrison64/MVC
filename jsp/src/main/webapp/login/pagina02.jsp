
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title> Login</title>
        <link rel="stylesheet" href="../css/efi.css">
    </head>

    <body>
        <%
        Conexion con;
        con = new Conexion();

        String usu_login;
        String usu_clave;

        usu_login = request.getParameter("usu_login");
        usu_clave = request.getParameter("usu_clave");

        String strSqlUser;
        strSqlUser = "select u.usu_login from usuario as u where u.usu_login = '" + usu_login + "'" ;
        String strSqlCv;
        strSqlCv = "select u.usu_clave from usuario as u where u.usu_clave = '" + usu_clave + "'";

        ResultSet rsUser;
        rsUser = con.consultarSql(strSqlUser);

        ResultSet rsCv;
        rsCv = con.consultarSql(strSqlCv);

        if (rsUser.next() && rsCv.next() == true) {
        %>

        <h1>Pagina 02 Login</h1>
        <form name="frm_roles" method="post">
            <label>Seleccionar</label>
            <select name="rol_id">
                <option value="1">Administrador de aplicación</option>
                <option value="2">Profesor</option>
                <option value="3">Estudiante</option>
            </select>
            <input type="submit" value="Ver Menu" name="rol_id" formaction="pagina03.jsp" />
        </form>

        <%
        }else {%>
        <p>El usuario o la contraseña son incorrectas volver al <a href="index.jsp">inicio</a></p>

        <%
        }
        con.cerrar();
        %>
    </body>

</html>
