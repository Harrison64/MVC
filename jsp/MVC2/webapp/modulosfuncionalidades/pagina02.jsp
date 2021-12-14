<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@page import="modelo.ModeloModxFun" %>
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
      <input type="text" name="id_mod" placeholder="Id del m&oacute;dulo"/>

      <label>Nombre</label>
      <input type="text" name="nombre" placeholder="Nombre"/>

      <label>Descripci&oacute;n</label>
      <input type="text" name="descripcion" placeholder="Descripci&oacute;n"/>

      <input type="submit" name="btn_accion" value="Crear" formaction="pagina02.jsp"/>


    </form>
<%
        //Inserción
        String id_inser = request.getParameter("id_mod");
        String nombre_inser = request.getParameter("nombre");
        String descripcion_inser = request.getParameter("descripcion");


        if (id_inser != null && nombre_inser != null && descripcion_inser != null){
            ModeloModxFun modulo = new ModeloModxFun();
            HashMap cont = new HashMap();
            cont.put("mod_id",id_inser);
            cont.put("mod_nombre",nombre_inser);
            cont.put("mod_descripcion",descripcion_inser);

            modulo.crear_modulo(cont);

            id_inser = nombre_inser = descripcion_inser = null;
            response.sendRedirect("index.jsp");
        }
        %>
</body>
</html>