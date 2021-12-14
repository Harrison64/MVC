<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           ModeloRol modelo = new ModeloRol();
           HashMap contenedor = new HashMap();
           String btncomando = request.getParameter("btncomando");


    if (btncomando.equalsIgnoreCase("Insertar Rol")) {
        contenedor.put("rol_nombre", request.getParameter("rol_nombre"));
        contenedor.put("rol_descripcion", request.getParameter("rol_descripcion"));
        modelo.insertarRol(contenedor);
       
    }
    if (btncomando.equalsIgnoreCase("Eliminar")) {
        contenedor.put("rol_id", String.valueOf(request.getParameter("rol_id")));
        modelo.eliminarRol(contenedor);
        
    }
   if (btncomando.equalsIgnoreCase("Modificar Rol")) {
        contenedor.put("rol_id", request.getParameter("rol_id"));
        contenedor.put("rol_nombre", request.getParameter("rol_nombre"));
        contenedor.put("rol_descripcion", request.getParameter("rol_descripcion"));
        modelo.modificarRol(contenedor);
        
       
    }
      modelo.listarRoles(contenedor);      
        %>
        <h1>Roles</h1>
        <p>
        <form name="frrol" method="post">    
            <%!
                String rol_id;
                String rol_nombre;
                String rol_descripcion;
            %>

            <table border="1">
                <thead>
                    <tr>
                        <th></th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                    </tr>
                </thead>
                <tbody>
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
                </tbody>
            </table>
            <br>   
            <input name="btncomando" type="submit" value="Crear" formaction="pagina02.jsp" /> 
            <input name="btncomando" type="submit" value="Eliminar" formaction="index.jsp" />
            <input name="btncomando" type="submit" value="Modificar" formaction="pagina03.jsp" />
            <input name="btncomando" type="submit" value="Permisos de Acceso" formaction="pagina04.jsp" />
        </form>

    </body>
</html>
