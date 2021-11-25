
<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title> Login</title>
    </head>

    <body>
        <%
        String usu_login;
        String usu_password;
        usu_login = request.getParameter("usu_login");
        usu_password = request.getParameter("usu_password");
        %> 
            <h1>Pagina 02 Login</h1>
            <p>Login: <%=usu_login%></p>
            <p>Password: <%=usu_password%></p>
            
            <form name="frm_roles" method="post">
                <label for="seleccionar">Seleccionar</label>
                <select name="rol_id">
                    <option value="1">Administrador</option>
                    <option value="2">Profesor</option>
                    <option value="3">Estudiante</option>
                    <option value="4">Secretaria Administrativa</option>
                </select>
                <input type="submit" value="Ver Menu" name="rol_id" formaction="pagina03.jsp" />
            </form>

    </body>
    
</html>
