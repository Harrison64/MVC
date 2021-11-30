
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Login</title>
    </head>
    <body> 
     <%
       String usu_login;
       String usu_password;
       
       usu_login=request.getParameter("usu_login");
       usu_password=request.getParameter("usu_password");
     
     %>
        <h1>Pagina 02 Login</h1>
        Login:<%=usu_login%><br>
        Password:<%=usu_password%><br>
        
        Usuario: Nombre usuario <p>
            <form name="frm_roles" method="post">
            <select name="rol_id">          
                <option value="1">Administrador</option>
                <option value="2">Profesor</option>
                <option value="3">Estudiante</option>
                <option value="4">Secretaria Administrativa</option>
            </select>
                <input type="submit" value="Ver Menu" name="btn_comando" formaction="pagina03.html" />
            </form>
        </p>
    </body>
</html>
