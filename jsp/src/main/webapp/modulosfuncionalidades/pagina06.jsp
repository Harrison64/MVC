<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modulo V1</title>
</head>
<body>
    <%
    String mod_id;
    String fun_id;
    mod_id = request.getParameter("mod_id");
    fun_id = request.getParameter("fun_id");
    %>
    <h2>Funcionalidades</h2>
    <form name="frm_funcionalidades" method="get">

      <input type="hidden" name="fun_id" value="" />

      <label for="nombre">Nombre</label>
      <input type="text" name="Nombre" value="" />

      <label for="ruta">Ruta</label>
      <input type="text" name="Ruta" value="" />

      <label for="descripcion">Descrici&oacute;n</label>
      <input type="text" name="Descripcion" value="" />

     <input type="hidden" name="mod_id" value="" />

     <input type="submit" name="btn_accion" value="Crear" formaction="pagina06.html" />
    </form>
</body>
</html>
