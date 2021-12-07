<%@page import="db.Conexion"%>
<@page import="java.sql.ResultSet"@>;
<html>
    <head>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%
        Conexion con;
        con = new Conexion();
        String  strSQLRoles;
        strSQLRoles="select * from rol;";
        ResultSet rsRoles;
        rsRoles=con.consultaSql(strSQLRoles);
        %>
        <h2>
            Nombre: Rol Ejemplo 1<br>
            Descripcion: Descripcion Rol Ejemplo 1
        </h2>
        <form method="POST" name="frm_rol">
            
                <select name="sel_izq" size="4">
                    <option value="0">Funcion prueba 1</option>
                    <option value="1">Funcion prueba 2</option>
                </select>
                    
                        <input type="submit" name="btn_comando" value="<-">
                    
                    
                    
                    
                        <input type="submit" name="btn_comando" value="->">
                    
                    <%
                    while(rsRoles.next()){
                    %>

                        <select name="sel_izq" size="4">>
                        <option value="0">Funcion prueba 3</option>
                        <option value="1">Funcion prueba 4</option>
                    </select>
            <input type="submit" name="btn_comando" value="Atras" formaction="index.jsp">
                    <% 
                    }
                    %>
        </form>
    </body>
</html>