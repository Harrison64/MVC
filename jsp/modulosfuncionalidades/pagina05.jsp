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
</head>
<body>
    <%
    String mod_id;
    mod_id = request.getParameter("mod_id");
    %>
    <h2>Funcionalidades</h2>
    <form name="frm_funcionalidades" method="get">

        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Ruta</th>
                <th>Descripcion</th>

            </tr>
            <tr>
                <td><input type='radio' name='fun_id' value='0'/>Nombre 1</td>
                <td>Ruta1</td>
                <td>Descripcion1</td>
            </tr>

             <tr>
                <td><input type='radio' name='fun_id' value='1'/>Nombre 2</td>
                <td>Ruta2</td>
                <td>Descripcion2</td>
            </tr>

              <tr>
                <td><input type='radio' name='fun_id' value='2'/>Nombre 3</td>
                <td>Ruta3</td>
                <td>Descripcion3</td>
            </tr>
        </table>
            <br>
                <input type="submit" name="btn_accion" value="Crear" formaction="pagina06.jsp" />
                <input type="submit" name="btn_accion" value="Eliminar" formaction="pagina07.jsp" />
                <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina08.jsp" />

            <br>

    </form>
</body>
</html>
