<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modulos</title>
    <link rel="stylesheet" href="../css/efi.css">
</head>
<body>
    <%
    Conexion con;
    con = new Conexion();

    String strSqlMod;

    strSqlMod = "SELECT * FROM modulo";
    ResultSet rsMod = con.consultarSql(strSqlMod);


    // Borrar
    String mod_id = request.getParameter("mod_id");

    //Fin borrar
    if (mod_id != null) {
        String strSqlModDelete = "DELETE FROM modulo WHERE mod_id = "+mod_id;
        ResultSet smd = con.consultarSql(strSqlModDelete);
        mod_id = null;
    }
    %>
    <h2>Modulos</h2>
    <form name="frm_modulos" method="POST">

        <table border="1">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre</th>
                <th>Descripcion</th>
            </tr>
            <%
            while (rsMod.next()){
            %>
            <tr>
                <td>
                    <fieldset>
                        <input type='radio' name='mod_id' value='<%=rsMod.getString("mod_id")%>'/>
                    </fieldset>
                </td>
                <td><%=rsMod.getString("mod_nombre")%></td>
                <td><%=rsMod.getString("mod_descripcion")%></td>
            </tr>
            <%
                }
                con.cerrar();
            %>
        </table>

        <input type="submit" name="btn_accion" value="Crear" formaction="pagina02.jsp" />
        <input type="submit" name="btn_accion" value="Eliminar" formaction="index.jsp" />
        <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina04.jsp" />
        <input type="submit" name="btn_accion" value="Funcionalidades" formaction="pagina05.jsp"/>
        
    </form>
</body>
</html>
