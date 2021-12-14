<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.ModeloUsuario"%>
<%@page import="java.util.ArrayList" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar usuario</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <%
        String user = request.getParameter("resp_user");
        String criterio = request.getParameter("resp_criterio");
        ModeloUsuario modelo = new ModeloUsuario();
        HashMap contenedor = new HashMap();
        HashMap objusuario = new HashMap();

        contenedor.put("per_id", String.valueOf(request.getParameter("per_id")));
        modelo.buscarUsuario(contenedor);
        request.setAttribute("contenedor", contenedor);
        contenedor = (HashMap) request.getAttribute("contenedor");
        objusuario = (HashMap) contenedor.get("objusuarios");
   
    %>
        <h1>Actualizar usuario</h1>
        <form method="PUT">
        <input type='hidden' name='per_id' value='<%=contenedor.get("per_id")%>' />
        
        <label for="per_nombre">Nombre :</label>
        <input type="text" name="per_nombre" value='<%=objusuario.get("per_nombre")%>'/>

        <label for="per_apellido">Apellidos :</label>
        <input type="text" name="per_apellido" value='<%=objusuario.get("per_apellido")%>'/>

        <label for="per_fecha_nacimiento">Fecha de nacimiento :</label>
        <input type="date" name="per_fecha_nacimiento" value='<%=objusuario.get("per_fecha_nacimiento")%>'/>

        <label for="per_direccion">Direccion :</label>
        <input type="text" name="per_direccion" value='<%=objusuario.get("per_direccion")%>'/>
        
        <label for="per_correo">Correo :</label>
        <input type="text" name="per_correo" value='<%=objusuario.get("per_correo")%>'/>

        <label for="per_genero">Genero:</label>
        <input type="text" name="per_genero" value='<%=objusuario.get("per_genero")%>'/>

        <label for="usu_login">Usuario :</label>
        <input type="text" name="usu_login" value='<%=objusuario.get("usu_login")%>'/>

        <label for="usu_clave">Clave :</label>
        <input type="text" name="usu_clave" value='<%=objusuario.get("usu_clave")%>'/>

        <input type="submit" name="btn_comando" value="Actualizar" formaction="pagina02.jsp" /> 
        <input name="btn_comando" type="submit" value="Volver" formaction="pagina02.jsp"/>  
        <input name="resp_user" type="hidden" value="<%=user%>" formaction="pagina03.jsp" /> 
        <input name="resp_criterio" type="hidden" value="<%=criterio%>" formaction="pagina03.jsp" /> 
</form>
</body>
</html>
