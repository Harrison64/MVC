<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Usuario</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <%
        String user = request.getParameter("resp_user");
        String criterio = request.getParameter("resp_criterio"); 
    %>
        <h1>Crear Usuario!</h1>
        
        <form method="post"> 
            <label for="per_id">Codigo :</label>
            <input type="text" name="per_id" />

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

            <input type="submit" name="btn_comando" value="insertar persona" formaction="pagina02.jsp"/> 
            <input name="btn_comando" type="submit" value="Volver" formaction="pagina02.jsp"  /> 
            <input name="resp_user" type="hidden" value="<%=user%>" formaction="pagina03.jsp" /> 
            <input name="resp_criterio" type="hidden" value="<%=criterio%>" formaction="pagina03.jsp" /> 
        </form>

    </body>
</html>
