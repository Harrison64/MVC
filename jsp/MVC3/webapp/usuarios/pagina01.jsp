<%@page import="java.sql.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.ModeloUsuario"%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("resp_user");
    String criterio = request.getParameter("resp_criterio");

    ModeloUsuario modelo = new ModeloUsuario();
    HashMap contenedor = new HashMap();
    String btncomando = request.getParameter("btn_comando");
    btncomando = btncomando == null ? "null" : btncomando;

        /*==================================================================
        ========================= Crear usuario =========================
        ==================================================================*/
    if (btncomando.equalsIgnoreCase("crear usuario")) {
        user = request.getParameter("resp_user");
        criterio = request.getParameter("resp_criterio");
        System.out.println(user);
        System.out.println(criterio);
        pageContext.forward("pagina03.jsp");
    }

    if (btncomando.equalsIgnoreCase("insertar persona")) {
        user = request.getParameter("resp_user");
        criterio = request.getParameter("resp_criterio");
        contenedor.put("per_id", String.valueOf(request.getParameter("per_id")));
        contenedor.put("per_nombre", String.valueOf(request.getParameter("per_nombre")));
        contenedor.put("per_apellido", String.valueOf(request.getParameter("per_apellido")));
        contenedor.put("per_fecha_nacimiento", String.valueOf(request.getParameter("per_fecha_nacimiento")));
        contenedor.put("per_direccion", String.valueOf(request.getParameter("per_direccion")));
        contenedor.put("per_correo", String.valueOf(request.getParameter("per_correo")));
        contenedor.put("per_genero", String.valueOf(request.getParameter("per_genero")));
        contenedor.put("usu_clave", String.valueOf(request.getParameter("usu_clave")));
        contenedor.put("usu_login", String.valueOf(request.getParameter("usu_login")));
        modelo.insertar_persona(contenedor);
        modelo.insertar_usuario(contenedor);
        modelo.listar_usuario(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina02.jsp");
    }
        /*==================================================================
        ========================= Eliminar usuario =========================
        ==================================================================*/
    if (btncomando.equals("Eliminar")) {
        user = request.getParameter("resp_user");
        criterio = request.getParameter("resp_criterio");
        contenedor.put("per_id", String.valueOf(request.getParameter("per_id")));
        modelo.eliminar_usuario(contenedor);
        modelo.eliminar_persona(contenedor);
        modelo.listar_usuario(contenedor, user, criterio);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina02.jsp");
    }

        /*==================================================================
        ========================= Modificar usuario ========================
        ==================================================================*/
    if (btncomando.equalsIgnoreCase("Actualizar Usuario")) {
        user = request.getParameter("resp_user");
        criterio = request.getParameter("resp_criterio");
        contenedor.put("per_id", String.valueOf(request.getParameter("per_id")));
        modelo.buscarUsuario(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina04.jsp");
    }

    if (btncomando.equalsIgnoreCase("Actualizar")) {
        user = request.getParameter("resp_user");
        criterio = request.getParameter("resp_criterio");
        contenedor.put("per_id", String.valueOf(request.getParameter("per_id")));
        contenedor.put("per_nombre", String.valueOf(request.getParameter("per_nombre")));
        contenedor.put("per_apellido", String.valueOf(request.getParameter("per_apellido")));
        contenedor.put("per_fecha_nacimiento", String.valueOf(request.getParameter("per_fecha_nacimiento")));
        contenedor.put("per_direccion", String.valueOf(request.getParameter("per_direccion")));
        contenedor.put("per_correo", String.valueOf(request.getParameter("per_correo")));
        contenedor.put("per_genero", String.valueOf(request.getParameter("per_genero")));
        contenedor.put("per_id", String.valueOf(request.getParameter("per_id")));
        contenedor.put("usu_login", String.valueOf(request.getParameter("usu_login")));
        contenedor.put("usu_clave", String.valueOf(request.getParameter("usu_clave")));
        modelo.actualizar_usuario(contenedor);
        modelo.actualizar_persona(contenedor);
        modelo.listar_usuario(contenedor, user, criterio);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina02.jsp");
    }

    if (btncomando == "" || btncomando.equalsIgnoreCase("buscar") || btncomando.equalsIgnoreCase("volver")) {
        modelo.listar_usuario(contenedor, user, criterio);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina02.jsp");
    }
%>