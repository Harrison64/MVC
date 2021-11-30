<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="../css/efi.css">
    </head>

    <body>
        <%
        Conexion con;
        con = new Conexion();

        String rol_id;
        rol_id = request.getParameter("rol_id");

        String strSqlRolId;
        strSqlRolId = "SELECT f.fun_nombre, f.fun_descripcion " +
                "FROM funcionalidad AS f, rol AS r, rolxfuncionalidad AS rxf " +
                "WHERE r.rol_id = "+rol_id+" AND r.rol_id = rxf.rol_id AND rxf.fun_id = f.fun_id";

        ResultSet rsRId;
        rsRId = con.consultarSql(strSqlRolId);
        %>
        <h1>Menu</h1>
        <%=rsRId.next()%>

        <h4>Funcionalidades a las que se tiene acceso este rol: </h4>

        <ul>
        <%
        while (rsRId.next()) {
        %>
            <li><%=rsRId.getString("fun_nombre")%></li>
                <%}%>
        </ul>
        <%
            con.cerrar();
        %>

    </body>
</html>