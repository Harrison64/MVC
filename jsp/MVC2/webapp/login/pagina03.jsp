<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="modelo.ModeloLogin" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="../css/efi.css">
    </head>

    <body>
    <%
        ModeloLogin modeloLog = new ModeloLogin();
        HashMap contenedor = new HashMap();
        contenedor.put("rol_id", request.getParameter("rol_id"));

        modeloLog.listarFuncionalidad(contenedor);
        ArrayList<HashMap> listamodulos;
        listamodulos = (ArrayList<HashMap>) contenedor.get("listamodulos");
        ArrayList<HashMap> listafuncionalidades;
        
    %>

        <h1>Menu</h1>

        <h4>Funcionalidades a las que se tiene acceso este rol: </h4>

        <ul>
            <%
                for (HashMap m : listamodulos) {
                    listafuncionalidades = (ArrayList<HashMap>) m.get("listafuncionalidades");
                    out.print("<li>"+m.get("mod_nombre")+"</li>");
                    out.print("<ul>");
                    for (HashMap f : listafuncionalidades){
                        out.print("<li>"+f.get("fun_nombre")+"</li>");
                    }
                    out.print("</ul>");
                }
            %>
        </ul>

    </body>
</html>