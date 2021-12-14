<%@page import="java.util.HashMap"%>
<%@page import="modelo.ModeloRol"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <link href="../css/efi.css" rel="stylesheet" type="text/css">
    <title> roles 01   </title>
</head>
<body>      
    <%
    ModeloRol modelo = new ModeloRol();
    HashMap contenedor = new HashMap();
    String btncomando = request.getParameter("btncomando");

    contenedor.put("rol_id", String.valueOf(request.getParameter("rol_id")));
 
    modelo.buscarRol(contenedor);
    HashMap objrol = new HashMap();
    objrol = (HashMap) contenedor.get("objrol");
     %>
     <h1>Modificar Rol</h1>
     <form  method="get">
     <input type='hidden' name='rol_id' value='<%=objrol.get("rol_id")%>' /></p>
        Nombre : <input type='text' name='rol_nombre' value='<%=objrol.get("rol_nombre")%>' /></p>
        Descripción : <input type='text' name='rol_descripcion' value='<%=objrol.get("rol_descripcion")%>' /></p>
<input type="submit" name="btn_comando" value="Modificar Rol" formaction="index.jsp" /> 
<input name="btn_comando" type="submit" value="Volver" formaction="index.jsp" />  
</form>

</body>
 </html>