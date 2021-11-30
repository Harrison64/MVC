
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title>Modulo V1</title>
</head>
<body>

    <%
    String mod_id;
    mod_id = request.getParameter("mod_id");
    %>
    <h2>Modulos</h2>
    <form name="frm_modulos" method="post">
      <input type="hidden" name="mod_id" value="" />
      <label for="nombre">Nombre</label>
      <input type="text" name="Nombre" value="" />
      <label for="descripcion">Descripcion</label>
      <input type="text" name="Descripcion" value="" />
      <input type="submit" name="btn_accion" value="Crear" formaction="pagina03.jsp" />
    </form>
</body>
</html>
