<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Permisos de roles</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Gestionar Permisos de roles</h1>

        <strong>Nombre:</strong> <br>
        <strong>Apellido: </strong>

        <form name="frmpermisos" method="POST">
            <input type="hidden" name="per_id" value="" />
            <input type="hidden" name="fun_id" value="" />
            <table border="1">
                    <tr>
                        <th>Asignadas</th>
                        <th></th>
                        <th>Disponibles</th>
                    </tr>
                    <tr>
                        <td>
                            <select name="fun_id_asignada" size="10">
                                
                            </select>
                        </td>
                        <td>
                            <input type="submit" value="<---" name="btn_comando" />
                            <br>
                            <input type="submit" value="--->" name="btn_comando" />
                        </td>
                        <td>
                            <select name="fun_id_porasignar" size="10">

                            </select>
                        </td>
                    </tr>
            </table>
            <input name="btn_comando" type="submit" value="Volver" formaction="pagina02.jsp"  />
        </form>
    </body>
</html>
