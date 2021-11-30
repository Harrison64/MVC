<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modulo V1</title>
</head>
<body>
    <%
    String mod_id;
    mod_id = request.getParameter("mod_id");
    %>
    <h2>Modulo</h2>
    <form name="frm_modulo">
        <input type="hidden" name="mod_id" value="" />
        <label for="nombre">Nombre</label>
        <input type="text" name="mod_nombre" value="" />
        <label for="descripcio">Descripci&oacute;n</label>
        <input type="text" name="mod_descripcion" value="" />
        <input type="submit" name="btn_accion" value="Enviar" formaction="index.jsp" />
    </form>
</body>
</html>
