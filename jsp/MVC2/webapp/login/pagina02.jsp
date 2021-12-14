<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="modelo.ModeloLogin" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title> Login</title>
        <link rel="stylesheet" href="../css/efi.css">
    </head>

    <body>
        <%
            ModeloLogin modeloLog = new ModeloLogin();
            HashMap contenedor = new HashMap();
            contenedor.put("usu_login", request.getParameter("usu_login"));
            contenedor.put("usu_clave", request.getParameter("usu_clave"));

            String rol_id;
            String rol_nombre;

            if (modeloLog.validarUsuario(contenedor)==true){
                modeloLog.listarRoles(contenedor);
                ArrayList<HashMap> listaroles;
                listaroles = (ArrayList<HashMap>) contenedor.get("listaroles");  
        %>
        <h1>Pagina 02 Login</h1>
        <form name="frm_roles" method="post">
            <label>Seleccionar</label>
            <select name="rol_id">
                <%
                for (HashMap r : listaroles) {
                    rol_id = (String) r.get("rol_id");
                    rol_nombre = (String) r.get("rol_nombre");
                    out.print("<option value="+rol_id+">"+rol_nombre+"</option>");
                }
                %>

            </select>
            <input type="submit" value="Ver Menu" name="rol_id" formaction="pagina03.jsp" />
        </form>
        <%}else{%>
        <p>El usuario o la contraseña son incorrectas volver al <a href="index.jsp">inicio</a></p>
        <%}%>
    </body>

</html>
