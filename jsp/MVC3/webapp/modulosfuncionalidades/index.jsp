<%@page import="java.util.HashMap"%>
<%@page import="modelo.ModeloModxFun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String btncomando = request.getParameter("btn_accion");
    modelo.ModeloModxFun modelo = new ModeloModxFun();
    HashMap contenedor = new HashMap();
    if (btncomando == null || btncomando.equalsIgnoreCase("Cancelar")) {
        modelo.listar_modulo(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina01.jsp");
    } else if (btncomando.equalsIgnoreCase("Crear")) {
        pageContext.forward("pagina02.jsp");
    } else if (btncomando.equalsIgnoreCase("Enviar")) {
        contenedor.put("mod_id", request.getParameter("mod_id"));
        contenedor.put("mod_nombre", request.getParameter("mod_nombre"));
        contenedor.put("mod_descripcion", request.getParameter("mod_descripcion"));
        modelo.crear_modulo(contenedor);
        modelo.listar_modulo(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina01.jsp");
    } else if (btncomando.equalsIgnoreCase("Actualizar")) {
        contenedor.put("mod_id_old", request.getParameter("mod_id"));
        modelo.consultar_actualizar_modulo(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina04.jsp");
    } else if (btncomando.equalsIgnoreCase("Guardar")) {
        contenedor.put("mod_id_old", String.valueOf(request.getParameter("mod_id_old")));
        contenedor.put("mod_id", String.valueOf(request.getParameter("mod_id")));
        contenedor.put("mod_nombre", String.valueOf(request.getParameter("mod_nombre")));
        contenedor.put("mod_descripcion", String.valueOf(request.getParameter("mod_descripcion")));
        modelo.modificar_modulo(contenedor);
        modelo.listar_modulo(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina01.jsp");
    } else if (btncomando.equalsIgnoreCase("Eliminar")) {
        contenedor.put("mod_id_eliminar", String.valueOf(request.getParameter("mod_id")));
        modelo.eliminar_modulo(contenedor);
        modelo.listar_modulo(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina01.jsp");
    } else if (btncomando.equalsIgnoreCase("Funcionalidades") || btncomando.equalsIgnoreCase("Volver,")) {
        contenedor.put("mod_id", String.valueOf(request.getParameter("mod_id")));
        modelo.listar_funcionalidad(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina05.jsp");
    } else if (btncomando.equalsIgnoreCase("Crear funcionalidad")) {
        pageContext.forward("pagina06.jsp");

    } else if (btncomando.equalsIgnoreCase("Agregar")) {
        contenedor.put("mod_id", String.valueOf(request.getParameter("mod_id")));
        contenedor.put("fun_id", String.valueOf(request.getParameter("fun_id")));
        contenedor.put("fun_nombre", String.valueOf(request.getParameter("fun_nombre")));
        contenedor.put("fun_ruta", String.valueOf(request.getParameter("fun_ruta")));
        contenedor.put("fun_descripcion", String.valueOf(request.getParameter("fun_descripcion")));
        modelo.crear_funcionalidad(contenedor);
        modelo.listar_funcionalidad(contenedor);

        request.setAttribute("contenedor", contenedor);

        pageContext.forward("pagina05.jsp");
    } else if (btncomando.equalsIgnoreCase("Modificar funcionalidad")) {
        contenedor.put("fun_id_old", String.valueOf(request.getParameter("fun_id")));
        contenedor.put("mod_id", String.valueOf(request.getParameter("mod_id")));
        modelo.consultar_actualizar_funcionalidad(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina08.jsp");

    } else if (btncomando.equalsIgnoreCase("Modificar")) {
        contenedor.put("mod_id", String.valueOf(request.getParameter("mod_id")));
        contenedor.put("fun_id", String.valueOf(request.getParameter("fun_id")));
        contenedor.put("fun_nombre", String.valueOf(request.getParameter("fun_nombre")));
        contenedor.put("fun_ruta", String.valueOf(request.getParameter("fun_ruta")));
        contenedor.put("fun_descripcion", String.valueOf(request.getParameter("fun_descripcion")));
        contenedor.put("fun_id_old", String.valueOf(request.getParameter("fun_id_old")));
        modelo.modificar_funcionalidad(contenedor);
        modelo.listar_funcionalidad(contenedor);
        request.setAttribute("contenedor", contenedor);

        pageContext.forward("pagina05.jsp");
    } else if (btncomando.equalsIgnoreCase("Eliminar funcionalidad")) {
        contenedor.put("fun_id_eliminar", String.valueOf(request.getParameter("fun_id")));
        contenedor.put("mod_id", String.valueOf(request.getParameter("mod_id")));
        modelo.eliminar_funcionalidad(contenedor);
        modelo.listar_funcionalidad(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina05.jsp");

    }

%>
