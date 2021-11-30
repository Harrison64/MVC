<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="../css/efi.css">
    </head>

    <body>
        <h1>Login Index</h1>        
        <form name="frm_login" method="POST">              
            
                <label>Login</label>
                <input type="text" name="usu_login" value="" size="10" placeholder="Login"/>

                <label>Password</label>
                <input type="password" name="usu_clave" value="" size="10" placeholder="Contrase&ntilde;a"/>

                <input type="submit" value="Ingresar" name="btn_comando" formaction="pagina02.jsp" />
        </form>

    </body>
</html>
