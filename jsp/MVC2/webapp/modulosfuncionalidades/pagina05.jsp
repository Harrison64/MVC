<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="modelo.ModeloModxFun" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Funcionalidades</title>
  <link rel="stylesheet" href="../css/efi.css">
</head>
<body>
<%
  String mod_id = request.getParameter("mod_id");

  ModeloModxFun funcionalidad = new ModeloModxFun();
  HashMap cont = new HashMap();
  cont.put("mod_id",mod_id);

  funcionalidad.listar_funcionalidad(cont);

  ArrayList <HashMap> listarfuncionalidades;
  listarfuncionalidades =  (ArrayList<HashMap>) cont.get("funcionalidad");
  //out.print("<p>"+listarfuncionalidades+"</p>");

  if (mod_id != null){
%>
<h2>Funcionalidades</h2>
<form name="frm_funcionalidades" method="POST">

  <table border="1">
    <tr>
      <th>Seleccionar</th>
      <th>Nombre</th>
      <th>Ruta</th>
      <th>Descripci&oacute;n</th>
    </tr>
    <%
      for (HashMap fun : listarfuncionalidades){
        out.print("<tr>" +
                "<td>" +
                "<fieldset>" +
                "<input type='radio' name='fun_id' value='"+fun.get("fun_id")+"'>" +
                "</fieldset>" +
                "</td>" +
                "<td>"+fun.get("fun_nombre")+"</td>" +
                "<td>"+fun.get("fun_ruta")+"</td>" +
                "<td>"+fun.get("fun_descripcion")+"</td>" +
                "</tr>");

      }
    %>
    </table>
    <br>
    <input type="hidden" name="mod_id" value="<%=mod_id%>">
    <input type="submit" name="btn_accion" value="Crear Funcionalidad" formaction="pagina06.jsp" />
    <input type="submit" name="btn_accion" value="Eliminar" formaction="pagina05.jsp" />
    <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina08.jsp" />
    <%} else {
      response.sendRedirect("index.jsp");
    }%>

</form>
</body>
</html>