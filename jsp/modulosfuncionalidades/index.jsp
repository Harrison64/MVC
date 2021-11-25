<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <h2>Modulos</h2>
    <form name="frm_modulos" method="get">

        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Descripcion</th>
            </tr>
            <tr>
                <td><input type='radio' name='mod_id' value='0'/>Nombre1</td>
                <td>Ejemplo1</td>
            </tr>

             <tr>
                <td><input type='radio' name='mod_id' value='1'/>Nombre2</td>
                <td>Ejemplo2</td>
            </tr>

              <tr>
                <td><input type='radio' name='mod_id' value='2'/>Nombre3</td>
                <td>Ejemplo3</td>
            </tr>
        </table>

        <input type="submit" name="btn_accion" value="Crear" formaction="pagina02.jsp" />
        <input type="submit" name="btn_accion" value="Eliminar" formaction="pagina03.jsp" />
        <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina04.jsp" />
        <input type="submit" name="btn_accion" value="Funcionalidades" formaction="pagina05.jsp"/>
        
    </form>
</body>
</html>
