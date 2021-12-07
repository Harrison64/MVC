<%@page import="db.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
           
            String sqlEliminar=" ";   
            String btncomando = request.getParameter("btn_comando");
            btncomando = btncomando == null ? "null" : btncomando;
            if (btncomando.equals("Eliminar")) {
                String rol_id = request.getParameter("rol_id");
            
                if (rol_id != null) {
                    sqlEliminar = "delete from rol where rol_id = '" + rol_id + "'";
                    con.ejecutarSql(sqlEliminar);
                        
                }
            }  
           
            if (btncomando.equals("Insertar rol")) {
                String rol_nombre = request.getParameter("rol_nombre");
                String rol_descripcion = request.getParameter("rol_descripcion");
                String sqlIngresar = "insert into rol (rol_nombre, rol_descripcion) "+ "values ('" +rol_nombre+ "','" +rol_descripcion+ "')";
               
                int r = con.ejecutarSql(sqlIngresar);
                
            
           
            }       
        
        
        
      
        
                 
            String strSqlRoles;
            strSqlRoles="select * from rol;";
            ResultSet rsRoles;
            rsRoles = con.consultarSql(strSqlRoles);
        %>
        
        <h1>Roles:</h1>
        <p><%=sqlEliminar%></p>
       
        <form  method="POST" name="frm_rol">
            <table>
                <caption>Roles</caption>
                    <tr>
                        <td></td>
                        <th>Nombre</th>
                        <th>Descripci&oacute;n</th>
                    </tr>
       
                    




    
        <%
        while (rsRoles.next()) {
            
        %>
                  
                    <tr>
                        <td><input type="radio" name="rol_id" value="<%=rsRoles.getString("rol_id")%>" ></td>
                        <td> <%=rsRoles.getString("rol_nombre")%></td>
                        <td> <%=rsRoles.getString("rol_descripcion")%></td>
                    </tr>
                  
                    
         <%

        }
              
        %> 
            </table>
			<input type="submit" name="btn_comando" value="A&ntilde;adir" formaction="pagina03.jsp">
            <input type="submit" name="btn_comando" value="Eliminar" formaction="index.jsp">
            <input type="submit" name="btn_comando" value="Modificar" formaction="pagina02.jsp">
			<input type="submit" name="btn_comando" value="Permisos Acceso" formaction="pagina04.jsp">
        </form>
        <%
        con.cerrar();
        %>
    </body>
</html>