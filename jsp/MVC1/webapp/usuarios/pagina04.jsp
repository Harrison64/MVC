<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar usuario</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <h1>Actualizar usuario</h1>
        <form method="PUT">
        <input type='hidden' name='per_id' value="" />
        
        <label for="per_nombre">Nombre :</label>
        <input type="text" name="per_nombre" />

        <label for="per_apellido">Apellidos :</label>
        <input type="text" name="per_apellido" />

        <label for="per_fecha_nacimiento">Fecha de nacimiento :</label>
        <input type="date" name="per_fecha_nacimiento" />

        <label for="per_direccion">Direccion :</label>
        <input type="text" name="per_direccion" />
        
        <label for="per_correo">Correo :</label>
        <input type="text" name="per_correo" />

        <label for="per_genero">Genero:</label>
        <input type="text" name="per_genero" />

        <label for="usu_login">Usuario :</label>
        <input type="text" name="usu_login" />

        <label for="usu_clave">Clave :</label>
        <input type="text" name="usu_clave" />

        <input type="submit" name="btn_comando" value="Actualizar" formaction="pagina02.jsp" /> 
        <input name="btn_comando" type="submit" value="Volver" formaction="pagina02.jsp"/>  
</form>
</body>
</html>