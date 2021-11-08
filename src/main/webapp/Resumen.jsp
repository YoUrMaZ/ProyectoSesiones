<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="Resumen" action="Resumen">
    <p>Nombre: <%String Nombre = (String)request.getAttribute("Nombre");
        out.println(Nombre);%> </p>

    <p>Apellidos: <%String Apellidos = (String)request.getAttribute("Apellidos");
        out.println(Apellidos);%></p>
    <p>Fecha de nacimiento: <%String FechaNacimiento = (String)request.getAttribute("Apellidos");
        out.println(Apellidos);%></p>
    <p>Nacionalidades: </p>


</form>

</body>
</html>
