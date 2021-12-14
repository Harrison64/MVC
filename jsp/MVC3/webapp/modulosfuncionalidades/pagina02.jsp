<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title>Crear m&oacute;dulo</title>
</head>
<body>

    <h2>M&oacute;dulos</h2>
    <form name="frm_modulos" method="POST">
      <label>Id m&oacute;dulo</label>
      <input type="text" name="mod_id" placeholder="Id del m&oacute;dulo"/>

      <label>Nombre</label>
      <input type="text" name="mod_nombre" placeholder="Nombre"/>

      <label>Descripci&oacute;n</label>
      <input type="text" name="mod_descripcion" placeholder="Descripci&oacute;n"/>

      <input type="submit" name="btn_accion" value="Enviar" formaction="index.jsp"/>
      <input type="submit" name="btn_accion" value="Cancelar" formaction="index.jsp"/>


    </form>
</body>
</html>