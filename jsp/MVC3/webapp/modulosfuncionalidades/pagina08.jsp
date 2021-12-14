<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Actualizar funcionalidad</title>
    <link rel="stylesheet" href="../css/efi.css">
</head>
<body>
<%
    HashMap contenedor = new HashMap();
    contenedor = (HashMap) request.getAttribute("contenedor");

    ArrayList <HashMap> temp ;
    temp = (ArrayList)contenedor.get("funcionalidad");
%>
<h2>Funcionalidades</h2>
<form name="frm_funcionalidades" method="POST">
    <input type="hidden" name="fun_id_old" value="<%=contenedor.get("fun_id_old")%>"/>
    <label>Id Funcionalidad</label>
    <input type="text" name="fun_id" value="<%=contenedor.get("fun_id_old")%>"/>
    <label>Nombre</label>
    <input type="text" name="fun_nombre" placeholder="Nombre" value="<%=temp.get(0).get("fun_nombre")%>"/>
    <label>Ruta</label>
    <input type="text" name="fun_ruta" placeholder="Ruta" value="<%=temp.get(0).get("fun_ruta")%>"/>
    <label>Descrici&oacute;n</label>
    <input type="text" name="fun_descripcion" placeholder="Descripción" value="<%=temp.get(0).get("fun_descripcion")%>"/>

    <input type="hidden" name="mod_id" value="<%=contenedor.get("mod_id")%>"/>
    <input type="submit" name="btn_accion" value="Modificar" formaction="index.jsp" />
    <input type="submit" name="btncomando" value="Volver">
</form>
</body>
</html>