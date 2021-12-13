<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="modelo.ModeloModxFun" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>M&oacute;dulos</title>
    <link rel="stylesheet" href="../css/efi.css">
</head>
<body>
    <%
        ModeloModxFun modelo = new ModeloModxFun();
        HashMap cont = new HashMap();

        modelo.listar_modulo(cont);
        ArrayList <HashMap> listamodulos;
        listamodulos =  (ArrayList<HashMap>) cont.get("modulo");
    %>
    <h2>Modulos</h2>
    <form name="frm_modulos" method="POST">

        <table border="1">
            <tr>
                <th>Seleccionar</th>
                <th>Nombre</th>
                <th>Descripcion</th>
            </tr>
                <%
                    for (HashMap lm : listamodulos){
                        out.print("<tr>"+
                                "<td>"+
                                "<fieldset>"+
                                "<input type='radio' name='mod_id' value='"+lm.get("mod_id")+"'/>"+
                                "</fieldset>"+
                                "</td>"+
                                "<td>" +lm.get("mod_nombre")+"</td>"+
                                "<td>" +lm.get("mod_descripcion")+"</td>"+
                                "</tr>");
                    }
                %>
        </table>

        <input type="submit" name="btn_accion" value="Crear" formaction="pagina02.jsp" />
        <input type="submit" name="btn_accion" value="Eliminar" formaction="index.jsp" />
        <input type="submit" name="btn_accion" value="Actualizar" formaction="pagina04.jsp" />
        <input type="submit" name="btn_accion" value="Funcionalidades" formaction="pagina05.jsp"/>

        <%
            String mod_id_eliminar = request.getParameter("mod_id");
            if(mod_id_eliminar != null) {
                cont.put("mod_id_eliminar", mod_id_eliminar);
                modelo.eliminar_modulo(cont);
                response.sendRedirect("index.jsp");
            }
        %>
        
    </form>
</body>
</html>
