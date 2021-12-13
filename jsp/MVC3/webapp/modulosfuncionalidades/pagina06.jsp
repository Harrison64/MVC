<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/efi.css">
    <title>Crear funcionalidad</title>
</head>
<body>

    <h2>Funcionalidades</h2>

<form name="frm_funcionalidades" method="POST">
    <label>Id Funcionalidad</label>
    <input type="text" name="fun_id" placeholder="Id Funcionalidad" />

    <label>Nombre</label>
    <input type="text" name="fun_nombre" placeholder="Nombre" />

    <label>Ruta</label>
    <input type="text" name="fun_ruta" placeholder="Ruta"/>

    <label>Descripci&oacute;n</label>
    <input type="text" name="fun_descripcion" placeholder="Descripción"/>

    <input type="hidden" name="mod_id" value="<%=request.getParameter("mod_id")%>"/>

    <input type="submit" name="btn_accion" value="Agregar" formaction="index.jsp" />
    <input type="submit" name="btn_accion" value="Volver">
</form>

</body>
</html>