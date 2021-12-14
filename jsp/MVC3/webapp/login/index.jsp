<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="modelo.ModeloLogin" %>
<%@ page import="java.util.ArrayList" %>

<%
    String btncomando = request.getParameter("btn_comando");
    ModeloLogin modelo = new ModeloLogin();
    HashMap contenedor = new HashMap();
    if (btncomando == null) {
        pageContext.forward("pagina01.jsp");
    }

    if (btncomando.equalsIgnoreCase("Ingresar")) {
        contenedor.put("usu_login", request.getParameter("usu_login"));
        contenedor.put("usu_clave", request.getParameter("usu_clave"));
        if (modelo.validarUsuario(contenedor)) {
            int nroles = modelo.listarRoles(contenedor);
            if (nroles > 1) {
                modelo.buscarPersona(contenedor);
                request.setAttribute("contenedor", contenedor);
                pageContext.forward("pagina02.jsp");
            }
            if (nroles == 1) {
                ArrayList<HashMap> listaroles = new ArrayList<>();
                listaroles = (ArrayList) contenedor.get("listaroles");
                HashMap objrol = new HashMap();
                objrol = listaroles.get(0);
                contenedor.put("rol_id", objrol.get("rol_id"));
                modelo.buscarPersona(contenedor);
                modelo.buscarRol(contenedor);
                modelo.listarFuncionalidad(contenedor);
                request.setAttribute("contenedor", contenedor);
                pageContext.forward("pagina03.jsp");
            }
        } else {
            pageContext.forward("pagina01.jsp");
        }

    }
    if (btncomando.equalsIgnoreCase("Menu")) {
        contenedor.put("per_id", request.getParameter("per_id"));
        contenedor.put("rol_id", request.getParameter("rol_id"));
        modelo.buscarPersona(contenedor);
        modelo.buscarRol(contenedor);
        modelo.listarFuncionalidad(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina03.jsp");

    }
%>