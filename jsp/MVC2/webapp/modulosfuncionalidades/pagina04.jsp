<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@page import="modelo.ModeloModxFun" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title>Actualizar m&oacute;dulo</title>
</head>
<body>
<%
    String mod_id_old = request.getParameter("mod_id");
%>

<h2>Modulos</h2>
<form name="frm_modulos" method="POST">
    <input type="hidden" name="mod_id" value="<%=mod_id_old%>"/>
    <label>Id m&oacute;dulo</label>
    <input type="text" name="id_mod" placeholder="Id del m&oacute;dulo"/>
    <label>Nombre</label>
    <input type="text" name="nombre" placeholder="Nombre"/>
    <label>Descripci&oacute;n</label>
    <input type="text" name="descripcion" placeholder="Descripci&oacute;n"/>
    <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina04.jsp"/>


</form>
<%
    //Inserción
    String nombre_update = request.getParameter("nombre");
    String descripcion_update = request.getParameter("descripcion");
    String id_modUPdate = request.getParameter("mod_id");


    if (nombre_update != null && descripcion_update != null){
        ModeloModxFun modulo = new ModeloModxFun();
        HashMap cont = new HashMap();
        cont.put("mod_id",id_modUPdate);
        cont.put("mod_id_old",mod_id_old);
        cont.put("mod_nombre",nombre_update);
        cont.put("mod_descripcion",descripcion_update);

        modulo.modificar_modulo(cont);

        nombre_update = descripcion_update = null;
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>