<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@page import="java.util.ArrayList"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title>Actualizar m&oacute;dulo</title>
</head>
<body>
<%
    HashMap contenedor = new HashMap();
    contenedor = (HashMap)request.getAttribute("contenedor");

    ArrayList <HashMap> temp = (ArrayList) contenedor.get("modulo");
%>
<h2>Modulos</h2>
<form name="frm_modulos" method="POST">
    <input type="hidden" name="mod_id_old" value="<%=contenedor.get("mod_id_old")%>"/>
    <label>Id m&oacute;dulo</label>
    <input type="text" name="mod_id" placeholder="Id del m&oacute;dulo" value="<%=contenedor.get("mod_id_old")%>"/>
    <label>Nombre</label>
    <input type="text" name="mod_nombre" placeholder="mod_nombre" value="<%=temp.get(0).get("mod_nombre")%>"/>
    <label>Descripci&oacute;n</label>
    <input type="text" name="mod_descripcion" placeholder="Descripci&oacute;n" value="<%=temp.get(0).get("mod_descripcion")%>"/>
    <input type="submit" name="btn_accion" value="Guardar" formaction="index.jsp"/>


</form>
</body>
</html>