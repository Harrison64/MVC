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
        <form name="frmusuarios" method="POST">
        <h3>Lista de usuarios</h3>
        <%
        String user = request.getParameter("buscar");
        String criterio = request.getParameter("criterio");
        
        String sqlInfo;
        ResultSet result;
        ModeloUsuario modelo = new ModeloUsuario();
        HashMap contenedor = new HashMap();
        String btncomando = request.getParameter("btn_comando");
        btncomando = btncomando == null ? "null" : btncomando;

        /*==================================================================
        ========================= Crear usuario =========================
        ==================================================================*/
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
        }

        /*==================================================================
        ========================= Modificar usuario ========================
        ==================================================================*/
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
            request.setAttribute("contenedor", contenedor);
    }
        /*==================================================================
        =========================== Permisos de Acceso =====================
        ==================================================================*/

        /*==================================================================
        =========================== Listar usuario =========================
        ==================================================================*/
         if (btncomando.equals("Volver")) {
             user = request.getParameter("resp_user");
            criterio = request.getParameter("resp_criterio");
         }
        
        modelo.listar_usuario(contenedor, user, criterio);
        request.setAttribute("contenedor", contenedor);

        contenedor = (HashMap) request.getAttribute("contenedor");
        ArrayList<HashMap> listar_usuario;
        listar_usuario = (ArrayList<HashMap>) contenedor.get("listausuarios");

        out.print("<fieldset>");
        for (HashMap objusuario: listar_usuario) {
            out.print("<input type='radio' name='per_id' value= '"+objusuario.get("per_id")+"'>");
            out.print("<label>"+objusuario.get("per_id")+" - "+objusuario.get("per_nombre")+"</label>");
        }
        out.print("</fieldset>");
        %>

            <input name="btn_comando" type="submit" value="Crear usuario" formaction="pagina03.jsp" /> 
            <input name="btn_comando" type="submit" value="Eliminar" formaction="pagina02.jsp" />
            <input name="btn_comando" type="submit" value="Actualizar Usuario" formaction="pagina04.jsp"/>
            <input name="btn_comando" type="submit" value="Permisos de Acceso" formaction="pagina05.jsp" />

            <input name="resp_user" type="hidden" value="<%=user%>" formaction="pagina03.jsp" /> 
            <input name="resp_criterio" type="hidden" value="<%=criterio%>" formaction="pagina03.jsp" /> 
        </form>
        

    </body>
</html>
