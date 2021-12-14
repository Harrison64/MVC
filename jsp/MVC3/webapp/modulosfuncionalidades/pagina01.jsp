<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
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
    HashMap contenedor = new HashMap();
    contenedor = (HashMap)request.getAttribute("contenedor");
    ArrayList<HashMap> listamodulos = (ArrayList<HashMap>) contenedor.get("modulo");
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

    <input type="submit" name="btn_accion" value="Crear" formaction="index.jsp" />
    <input type="submit" name="btn_accion" value="Eliminar" formaction="index.jsp" />
    <input type="submit" name="btn_accion" value="Actualizar" formaction="index.jsp" />
    <input type="submit" name="btn_accion" value="Funcionalidades" formaction="index.jsp"/>

</form>
</body>
</html>
