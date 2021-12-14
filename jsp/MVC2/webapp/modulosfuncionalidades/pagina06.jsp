<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="modelo.ModeloModxFun" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/efi.css">
    <title>Crear funcionalidad</title>
</head>
<body>

    <h2>Funcionalidades</h2>
    <%
        String mod_inser = null;
        String btnComando = request.getParameter("btn_accion");
        mod_inser = request.getParameter("mod_id");

        ModeloModxFun fun = new ModeloModxFun();
        HashMap cont = new HashMap();

        mod_inser = request.getParameter("mod_id");
        String idfun_inser = request.getParameter("fun_id");
        String nombre_inser = request.getParameter("fun_nombre");
        String ruta_inser = request.getParameter("fun_ruta");
        String descripcion_inser = request.getParameter("fun_descripcion");

        if (btnComando.equals("Crear")) {

            cont.put("fun_id",idfun_inser);
            cont.put("fun_nombre",nombre_inser);
            cont.put("fun_ruta",ruta_inser);
            cont.put("fun_descripcion",descripcion_inser);
            cont.put("mod_id",mod_inser);

            fun.crear_funcionalidad(cont);
            response.sendRedirect("pagina05.jsp");
        }

    %>
<form name="frm_funcionalidades" method="POST">
    <label>Id Funcionalidad</label>
    <input type="text" name="fun_id" placeholder="Id Funcionalidad" />

    <label>Nombre</label>
    <input type="text" name="fun_nombre" placeholder="Nombre" />

    <label>Ruta</label>
    <input type="text" name="fun_ruta" placeholder="Ruta"/>

    <label>Descripci&oacute;n</label>
    <input type="text" name="fun_descripcion" placeholder="Descripción"/>

    <input type="hidden" name="mod_id" value="<%=mod_inser%>"/>

    <input type="submit" name="btn_accion" value="Crear" formaction="pagina06.jsp" />
</form>

</body>
</html>