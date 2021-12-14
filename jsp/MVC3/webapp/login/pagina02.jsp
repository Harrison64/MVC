<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title> Login</title>
        <link rel="stylesheet" href="../css/efi.css">
    </head>

    <body>
        <%
            HashMap contenedor = new HashMap();
            contenedor = (HashMap) request.getAttribute("contenedor");
            %>

        <h1>Pagina 02 Login</h1>
        <form name="frm_roles" method="post">
            <label>Seleccionar</label>
            <select name="rol_id">
                <%
                    ArrayList <HashMap> listaroles = (ArrayList<HashMap>)  contenedor.get("listaroles");
                    for (HashMap r : listaroles) {
                        out.print("<option value="+(String) r.get("rol_id")+">"+(String) r.get("rol_nombre")+"</option>");
                    }
                %>

            </select>
            <input type="submit" value="Menu" name="btn_comando" formaction="index.jsp" />
        </form>
    </body>

</html>
