<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios registrados</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <h1>Usuarios registrados</h1>
        <form name="frmusuarios" method="POST">
        <h3>Lista de usuarios</h3>
        <%
        Conexion con;
        con = new Conexion();

        String user = request.getParameter("buscar");
        String criterio = request.getParameter("criterio");
        
        String sqlInfo;
        ResultSet result;

        String btncomando = request.getParameter("btn_comando");
        btncomando = btncomando == null ? "null" : btncomando;


         //====================  eliminar persona =======================================
        if (btncomando.equals("Eliminar")) {
            user = request.getParameter("resp_user");
            criterio = request.getParameter("resp_criterio");

            String per_id;
            per_id = request.getParameter("per_id");
            con.ejecutarSql("delete from usuario where per_id='" + per_id + "'");
            con.ejecutarSql("delete from persona where per_id='" + per_id + "'");
        }


         //====================  eliminar persona =======================================


         //====================  actualizar persona =======================================
         if (btncomando.equals("Actualizar")) {
            user = request.getParameter("resp_user");
            criterio = request.getParameter("resp_criterio");

            String per_id;
            String per_nombre;
            String per_apellido;
            String per_fecha_nacimiento;
            String per_direccion;
            String per_correo;
            String per_genero;
        
            per_id = request.getParameter("per_id");
            per_nombre = request.getParameter("per_nombre");
            per_apellido = request.getParameter("per_apellido");
            per_fecha_nacimiento = request.getParameter("per_fecha_nacimiento");
            per_direccion = request.getParameter("per_direccion");
            per_correo = request.getParameter("per_correo");
            per_genero = request.getParameter("per_genero");
            String strsqlpersona = "update persona set per_nombre= '" + per_nombre + "',per_apellido ='" + per_apellido  + "',per_fecha_nacimiento ='" + per_fecha_nacimiento + "',per_direccion ='" + per_direccion + "',per_correo ='" + per_correo + "',per_genero ='" + per_genero + "'where persona.per_id='" + per_id + "';";
            con.ejecutarSql(strsqlpersona);

            String usu_login;
            String usu_clave;
        
            usu_login = request.getParameter("usu_login");
            usu_clave = request.getParameter("usu_clave");

            
            String strsqlusuario = "update usuario set usu_login= '" + usu_login + "',usu_clave ='" + usu_clave  + "',1'"  + "',true ='" + "',per_id ='" + per_id +  "'where usuario.per_id='" + per_id + "';";
            con.ejecutarSql(strsqlusuario);
        }

         //====================  actualizar persona =======================================


        //====================  insertar persona =======================================

        
        
        if (btncomando.equals("insertar persona")) {
            user = request.getParameter("resp_user");
            criterio = request.getParameter("resp_criterio");


            String per_id;
            String per_nombre;
            String per_apellido;
            String per_fecha_nacimiento;
            String per_direccion;
            String per_correo;
            String per_genero;
        
            per_id = request.getParameter("per_id");
            per_nombre = request.getParameter("per_nombre");
            per_apellido = request.getParameter("per_apellido");
            per_fecha_nacimiento = request.getParameter("per_fecha_nacimiento");
            per_direccion = request.getParameter("per_direccion");
            per_correo = request.getParameter("per_correo");
            per_genero = request.getParameter("per_genero");
            String strsqlpersona = "insert into persona(per_id, per_nombre, per_apellido, per_fecha_nacimiento, per_direccion, per_correo, per_genero)values ('" + per_id + "','" + per_nombre + "','" + per_apellido + "','" + per_fecha_nacimiento + "','" + per_direccion + "','" + per_correo + "','"+ per_genero + "');";

            con.ejecutarSql(strsqlpersona);

            String usu_login;
            String usu_clave;
            String usu_tema;
            boolean usu_activo;

            usu_login = request.getParameter("usu_login");
            usu_clave = request.getParameter("usu_clave");
            String strsqlusuario = "insert into usuario(per_id,usu_login, usu_clave, usu_tema, usu_activo)VALUES('" + per_id+ "','" + usu_login  + "','" + usu_clave + "','" + "1"+ "','"+"true"+"')";
            con.ejecutarSql(strsqlusuario);


        }
        
        //====================  insertar persona =======================================

        //====================  listar persona =======================================
        switch(criterio){
            case "1":
                sqlInfo = "select p.per_id, p.per_nombre, p.per_apellido "
                + "from persona as p where p.per_nombre LIKE '%"+user+"%'";

                result = con.consultarSql(sqlInfo);
                break;

            case "2":
                sqlInfo = "select p.per_id, p.per_nombre, p.per_apellido "
                + "from persona as p where p.per_apellido LIKE '%"+user+"%'";

                result = con.consultarSql(sqlInfo); 
                break;
            
            case "3":
                sqlInfo = "select p.per_id, p.per_nombre, p.per_apellido "
                + "from persona as p where p.per_id LIKE '%"+user+"%'";
    
                result = con.consultarSql(sqlInfo);
                break;   
            
            default:
                sqlInfo = "select p.per_id, p.per_nombre, p.per_apellido "
                + "from persona as p where p.per_nombre LIKE '%"+user+"%'";

                result = con.consultarSql(sqlInfo);
        } 
        
        //====================  listar persona =======================================
        %>
        
        <fieldset>
        <%
        while (result.next()) {
        %>
                 <input type='radio' name='per_id' value= '<%=result.getString("per_id")%>' >
                <label><%=result.getString("per_nombre")%></label>
        <%}%>
        <%
        con.cerrar();
        %>
        </fieldset>

               
            <input name="btn_comando" type="submit" value="Crear usuario" formaction="pagina03.jsp" /> 
            <input name="btn_comando" type="submit" value="Eliminar" formaction="pagina02.jsp" />
            <input name="btn_comando" type="submit" value="Actualizar Usuario" formaction="pagina04.jsp"/>
            <input name="btn_comando" type="submit" value="Permisos de Acceso" formaction="pagina05.jsp" />

            <input name="resp_user" type="hidden" value="<%=user%>" formaction="pagina03.jsp" /> 
            <input name="resp_criterio" type="hidden" value="<%=criterio%>" formaction="pagina03.jsp" /> 
        </form>
        

    </body>
</html>
