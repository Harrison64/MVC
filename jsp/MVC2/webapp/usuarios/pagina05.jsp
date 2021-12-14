<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.Date"%>
<%@page import="modelo.ModeloUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/efi.css" rel="stylesheet" type="text/css">
        <title>Roles Usuario</title>
    </head>
    <body>
        <h1> Asignar Permisos al Usuario</h1>
        <%  
        String user = request.getParameter("resp_user");
        String criterio = request.getParameter("resp_criterio");
        ModeloUsuario modelo = new ModeloUsuario();
        HashMap contenedor = new HashMap();
        contenedor.put("per_id", request.getParameter("per_id"));
        modelo.listar_usuxrol(contenedor);
        modelo.buscarUsuario(contenedor);
        request.setAttribute("contenedor", contenedor);
        contenedor.put("per_id", request.getParameter("per_id"));
        contenedor.put("rol_id", request.getParameter("rol_id"));
        contenedor.put("fun_id", request.getParameter("fun_id_porasignar"));
        modelo.insertar_UsuxRol(contenedor);
        modelo.buscarRol(contenedor);
       modelo.buscarFuncionalidad(contenedor);
        modelo.listar_usuxrol(contenedor);
        modelo.buscarFuncionalidad(contenedor);
        request.setAttribute("contenedor", contenedor);
        pageContext.forward("pagina05.jsp");

        contenedor = (HashMap) request.getAttribute("contenedor");
        HashMap objusuario = new HashMap();
        objusuario = (HashMap) contenedor.get("objusuarios");
        ArrayList<HashMap> listaroles;
        listaroles = (ArrayList<HashMap>) contenedor.get("listaroles");
        
        HashMap objfuncionalidad = new HashMap();
        objfuncionalidad = (HashMap) contenedor.get("objfuncionalidad");
        
        ArrayList<HashMap> listafunasignadas;
        listafunasignadas = (ArrayList<HashMap>) contenedor.get("listafunasignadas");
        ArrayList<HashMap> listafunporasignar;
        listafunporasignar = (ArrayList<HashMap>) contenedor.get("listafunporasignar");
        %>
        <strong>Nombre: <%=objusuario.get("per_nombre") %> </strong> <br>
        <strong>Apellido: <%=objusuario.get("per_apellido") %></strong><br>
        
      <form name="frmpermisos" method="POST">
            <input type="hidden" name="per_id" value="<%=objusuario.get("per_id")%>" />
            <input type="hidden" name="fun_id" value="<%=objfuncionalidad.get("fun_id")%>" />
            <table border="1">
                    <tr>
                        <th>Asignadas</th>
                        <th></th>
                        <th>Disponibles</th>
                    </tr>
                    <tr>
                        <td>
                            <select name="fun_id_asignada" size="1">
                             <%
                                    for (HashMap objfun : listafunasignadas) {
                                        out.write("<option value='" + objfun.get("fun_id") + "'>");
                                        out.write((String) objfun.get("fun_nombre"));
                                        out.write("</option>");
                                    }
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
                            <%
                                    for (HashMap objfun : listafunporasignar) {
                                        out.write("<option value='" + objfun.get("fun_id") + "'>");
                                        out.write((String) objfun.get("fun_nombre"));
                                        out.write("</option>");
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
            </table>
            <input name="btn_comando" type="submit" value="Volver" formaction="pagina02.jsp"  />

            <input type="hidden" name="resp_user" value='<%=user%>' />
            <input type="hidden" name="resp_criterio" value='<%=criterio%>' />
        </form>
    </body>
</html>