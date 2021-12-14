<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.ModeloUsuario"%>
<%@page import="java.util.ArrayList" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios registrados</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <h1>Usuarios registrados</h1>
        <form name="frmusuarios" action="pagina01.jsp" method="POST">
        <h3>Lista de usuarios</h3>
        <%
            String user = request.getParameter("resp_user");
            String criterio = request.getParameter("resp_criterio");
            HashMap contenedor = new HashMap();
            ArrayList<HashMap> listar_usuario;
            contenedor = (HashMap) request.getAttribute("contenedor");
            listar_usuario = (ArrayList<HashMap>) contenedor.get("listausuarios");

            out.print("<fieldset>");
            for (HashMap objusuario: listar_usuario) {
                out.print("<input type='radio' name='per_id' value= '"+objusuario.get("per_id")+"'>");
                out.print("<label>"+objusuario.get("per_id")+" - "+objusuario.get("per_nombre")+"</label>");
            }
            out.print("</fieldset>");
        
        %>
            <input name="btn_comando" type="submit" value="crear usuario"/> 
            <input name="btn_comando" type="submit" value="Eliminar"/>
            <input name="btn_comando" type="submit" value="Actualizar Usuario"/>
            <input name="btn_comando" type="submit" value="Permisos de Acceso"/>

            <input name="resp_user" type="hidden" value="<%=user%>"/> 
            <input name="resp_criterio" type="hidden" value="<%=criterio%>"/> 
        </form>
        

    </body>
</html>
