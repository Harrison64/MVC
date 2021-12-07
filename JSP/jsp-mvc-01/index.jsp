<%@page import="db.Conexion"%>
<%@page import="java.sql.ResultSet"%>;
<html>
<head>
    <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
    <link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title> roles 01   </title>
</head>
    <body>
        <%
            Conexion con;
            con=new Conexion();
            
            String strSqlRoles;
            strSqlRoles="select * from rol;";
            
            ResultSet rsRoles;
            rsRoles = con.consultarSql(strSqlRoles);
        %>
        <h1>Roles:</h1>
      
        <form  method="POST" name="frm_rol">
            <table>
                <caption>Roles</caption>
                    <tr>
                        <td></td>
                        <th>Nombre</th>
                        <th>Descripci�n</th>
                    </tr>
                    
                    <%
                     while (rsRoles.next()) {
                    %>
                    <tr>
                        <td><input type="radio" name="rol_id" value="<%=rsRoles.getString("rol_id")%>" ></td>
                        <td><%=rsRoles.getString("rol_nombre")%></td>
                        <td><%=rsRoles.getString("rol_descripcion")%></td>
                    </tr>
                    <%
                    }
                    %>
                    
               
            </table>
			<input type="submit" name="btn_comando" value="A�adir" formaction="pagina03.jsp">
			<input type="submit" name="btn_comando" value="Eliminar" formaction="index.jsp">
			<input type="submit" name="btn_comando" value="Modificar" formaction="pagina02.jsp">
			<input type="submit" name="btn_comando" value="Permisos Acceso" formaction="pagina04.jsp">
        </form>
                    <%
                    con.cerrar();
                    %>
    </body>
</html>