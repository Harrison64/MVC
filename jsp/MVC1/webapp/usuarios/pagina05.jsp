<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.Conexion" %>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Permisos de roles</title>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <%
        Conexion con;
        con = new Conexion();
        ResultSet result;

        String per_id = request.getParameter("per_id");
        String sqlInfo ="select per.per_id, per.per_nombre, per.per_apellido from persona as per where  per.per_id = '"+per_id+"';";

        String btncomando = request.getParameter("btn_comando");
        btncomando = btncomando == null ? "null" : btncomando;
        String fun_id_porasignar = request.getParameter("fun_id_porasignar");
        String fun_id_asignada = request.getParameter("fun_id_asignada");

        if(btncomando.equals("<---"))
        {
           String sqladdrol = "insert into usuarioxrol values ('"+fun_id_porasignar+"','"+per_id+"');"; 
           result = con.consultarSql(sqladdrol);
        }
        else
        {
            if(btncomando.equals("--->"))
            {
                String sqldelete = "delete from usuarioxrol where per_id = '"+per_id+"' and rol_id = '"+fun_id_asignada+"';"; 
                result = con.consultarSql(sqldelete);
            }
        }

        result = con.consultarSql(sqlInfo);

        String sqlRolAsig ="select distinct(rol.rol_id), rol.rol_nombre, usuarioxrol.per_id, persona.per_nombre from (rol inner join usuarioxrol on rol.rol_id = usuarioxrol.rol_id) inner join persona on usuarioxrol.per_id = persona.per_id where persona.per_id ='"+per_id+"';";

        String sqlRolDis ="select distinct(rol.rol_id), rol.rol_nombre from (rol left join usuarioxrol on rol.rol_id = usuarioxrol.rol_id) where rol.rol_id not in (select distinct(rol.rol_id) from (rol inner join usuarioxrol on rol.rol_id = usuarioxrol.rol_id) inner join persona on usuarioxrol.per_id = persona.per_id where persona.per_id ='"+per_id+"');";

        
        ResultSet resultasig = con.consultarSql(sqlRolAsig);
        ResultSet resultdis = con.consultarSql(sqlRolDis);

        String user = request.getParameter("resp_user");
        String criterio = request.getParameter("resp_criterio"); 
   
    %>
        <h1>Gestionar Permisos de roles</h1>
        <% while(result.next())
        {%>
        <strong>Nombre: <%=result.getString("per_nombre") %> </strong> <br>
        <strong>Apellido: <%=result.getString("per_apellido") %></strong>
        <%}%>
        <form name="frmpermisos" method="POST">
            <input type="hidden" name="per_id" value='<%=per_id%>' />
            <table border="1">
                    <tr>
                        <th>Asignadas</th>
                        <th></th>
                        <th>Disponibles</th>
                    </tr>
                    <tr>
                        <td>
                            <select name="fun_id_asignada" size="1">
                                <% while(resultasig.next())
                                {%>
                                    <option value='<%=resultasig.getString("rol_id") %>'><%=resultasig.getString("rol_nombre") %></option>
                                <%}
                                con.cerrar();
                                %>
                            </select>
                        </td>
                        <td>
                            <input type="submit" value="<---" name="btn_comando" formaction="pagina05.jsp" />
                            <br>
                            <input type="submit" value="--->" name="btn_comando" formaction="pagina05.jsp"/>
                        </td>
                        <td>
                            <select name="fun_id_porasignar" size="1">
                                <% while(resultdis.next())
                                {%>
                                    <option value='<%=resultdis.getString("rol_id") %>'><%=resultdis.getString("rol_nombre") %></option>
                                <%}
                                con.cerrar();
                                %>
                            </select>
                        </td>
                    </tr>
            </table>
            <input name="btn_comando" type="submit" value="Volver" formaction="pagina02.jsp"  />
            <input type="hidden" name="buscar" value='<%=user%>' />
            <input type="hidden" name="criterio" value='<%=criterio%>' />
            <input type="hidden" name="resp_user" value='<%=user%>' />
            <input type="hidden" name="resp_criterio" value='<%=criterio%>' />
        </form>
    </body>
</html>
