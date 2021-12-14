<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar usuario</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <%
        Conexion con;
        con = new Conexion();

        String per_id = request.getParameter("per_id");
        String sqlInfo ="select per.per_id, per.per_nombre, per.per_apellido, per.per_fecha_nacimiento, per.per_direccion, per.per_correo, per.per_genero, usu.usu_login, usu.usu_clave from usuario as usu , persona as per where usu.per_id=per.per_id and per.per_id = "+per_id+"';";

        ResultSet result = con.consultarSql(sqlInfo);

        String user = request.getParameter("resp_user");
        String criterio = request.getParameter("resp_criterio"); 
   
    %>
        <h1>Actualizar usuario</h1>
        <form method="PUT">
        <input type='hidden' name='per_id' value="<%=per_id%>" />
        
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
        <input name="resp_user" type="hidden" value="<%=user%>" formaction="pagina03.jsp" /> 
        <input name="resp_criterio" type="hidden" value="<%=criterio%>" formaction="pagina03.jsp" /> 
        <%
        con.cerrar();
        %>
</form>
</body>
</html>
