<%@page import="db.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.ModeloRol"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
    <link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title> roles 01   </title>
</head>
    <body>
        <%
            ModeloRol modelo = new ModeloRol();
            HashMap contenedor = new HashMap();
            String btn_comando = request.getParameter("btn_comando");
            String sqlEliminar=" ";   
            btn_comando = btn_comando == null ? "null" : btn_comando;
            if (btn_comando.equals("Eliminar")) {
                String rol_id = request.getParameter("rol_id");
            
                if (rol_id != null) {
                    contenedor.put("rol_id", String.valueOf(request.getParameter("rol_id")));
                    modelo.eliminarRol(contenedor);
                        
                }
            }  
           
            if (btn_comando.equals("Insertar rol")) {
                contenedor.put("rol_nombre", request.getParameter("rol_nombre"));
                contenedor.put("rol_descripcion", request.getParameter("rol_descripcion"));
                modelo.insertarRol(contenedor);
                
            
           
            }
            if (btn_comando.equalsIgnoreCase("Modificar Rol")) {
                contenedor.put("rol_id", request.getParameter("rol_id"));
                contenedor.put("rol_nombre", request.getParameter("rol_nombre"));
                contenedor.put("rol_descripcion", request.getParameter("rol_descripcion"));
                modelo.modificarRol(contenedor);
                
               
            }      
        
        
        
      
        
                 
            modelo.listarRoles(contenedor); 
        %>
        
        <h1>Roles:</h1>
       
       
        <form  method="POST" name="frm_rol">
           
       
        <%!
            String rol_id;
            String rol_nombre;
            String rol_descripcion;
        %>          

        <table>
            <caption>Roles</caption>
                <tr>
                    <td></td>
                    <th>Nombre</th>
                    <th>Descripci&oacute;n</th>
                </tr>


    
            <%
                ArrayList<HashMap> listaroles;
                listaroles = (ArrayList<HashMap>) contenedor.get("listaroles");
                for (HashMap objrol: listaroles) {
                    rol_nombre = (String) objrol.get("rol_nombre");
                    rol_id = (String) objrol.get("rol_id");
                    rol_descripcion = (String) objrol.get("rol_descripcion");
                    out.print("<tr>");
                    out.print("<td>" + "<input type='radio' name='rol_id' value= '" + rol_id + "' >" + "</td>");
                    out.print("<td>" + rol_nombre + "</td>");
                    out.print("<td>" + rol_descripcion + "</td>");
                    out.print("</tr>");
                }
            %>
            </table>
			<input type="submit" name="btn_comando" value="A&ntilde;adir" formaction="pagina03.jsp">
            <input type="submit" name="btn_comando" value="Eliminar" formaction="index.jsp">
            <input type="submit" name="btn_comando" value="Modificar" formaction="pagina02.jsp">
			<input type="submit" name="btn_comando" value="Permisos Acceso" formaction="pagina04.jsp">
        </form>
     
    </body>
</html>