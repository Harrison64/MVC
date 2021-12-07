<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Roles Usuario</title>
    </head>
    <body>
        <h1> Asignar Permisos por Modulos</h1>
        <%  
        %>
        <strong>Nombre:</strong> <%=""%><br>
        <strong>Descripción: </strong><%=""%><p>
        
      
        <form name="frm_permisos" method="POST">
            <input type="hidden" name="rol_id" value="<%=""%>" />
            <input type="hidden" name="mod_id" value="<%=""%>" />
            <table border="1">
                <thead>
                    <tr>
                        <th>Asignadas</th>
                        <th></th>
                        <th>Disponibles</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <select name="fun_id_asignada" size="10">
                                <%
                                    
                                %>
                            </select>
                        </td>
                        <td><input type="submit" value="<-" name="btn_comando" /><br>
                            <input type="submit" value="->" name="btn_comando" /></td>
                        <td>
                            <select name="fun_id_porasignar" size="10">
                                <%
                                   
                                %>
                            </select></td>
                    </tr>
                </tbody>
            </table>
                            <input type="submit" name="btn_comando" value="Cambiar de Modulo"/> <br>
                            <input type="submit" name="btn_comando" value="Atras" formaction="index.jsp">
        </form>
    </body>
</html>
