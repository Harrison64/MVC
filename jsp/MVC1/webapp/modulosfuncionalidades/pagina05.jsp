<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
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

  Conexion con;
  con = new Conexion();

  String strSqlFun = "SELECT * FROM funcionalidad WHERE mod_id = "+mod_id;
  ResultSet rsFun = con.consultarSql(strSqlFun);


  // Borrar
  String fun_id = request.getParameter("fun_id");


  if (fun_id != null) {
    String strSqlFunDelete = "DELETE FROM funcionalidad WHERE fun_id = "+fun_id;
    ResultSet sfd = con.consultarSql(strSqlFunDelete);
    fun_id = null;
  }
  //Fin borrar
%>
<h2>Funcionalidades</h2>
<form name="frm_funcionalidades" method="POST">

  <table border="1">
    <tr>
      <th>Seleccionar</th>
      <th>Nombre</th>
      <th>Ruta</th>
      <th>Descripcion</th>
    </tr>
    <%
    while (rsFun.next()){%>
    <tr>
      <td>
        <fieldset>
          <input type="radio" name="fun_id" value="<%=rsFun.getString("fun_id")%>">
        </fieldset>
      </td>
      <td><%=rsFun.getString("fun_nombre")%></td>
      <td><%=rsFun.getString("fun_ruta")%></td>
      <td><%=rsFun.getString("fun_descripcion")%></td>
    </tr>
    <%
      }
      con.cerrar();
    %>
    </table>
    <br>
    <input type="submit" name="btn_accion" value="Crear" formaction="pagina06.jsp" />
    <input type="submit" name="btn_accion" value="Eliminar" formaction="pagina05.jsp" />
    <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina08.jsp" />

  <br>

</form>
</body>
</html>