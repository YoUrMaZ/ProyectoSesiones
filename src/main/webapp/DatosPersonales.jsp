<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DatosPersonales</title>
</head>
<body>
<%
    HttpSession sesion = request.getSession(true);
%>

<a href="DatosPersonales.jsp">
    <input type="button" value="1"/>
</a>
<a href="DatosProfesionales.jsp">
    <input type="button" value="2"/>
</a>
<a href="../../../../ProyectoSesiones/src/main/webapp/DatosBancarios.jsp">
    <input type="button" value="3"/>
</a>
<a href="Resumen.jsp">
    <input type="button" value="Resumen"/>
</a>
<br/><br/>

<fieldset>Datos personales
    <hr/>
    <form name="Formulario_datos" method="post" action="DatosPersonales">
        <label>
            <input type="text" name="Nombre" size="30" placeholder="Nombre" value="<%String Nombre = (String)sesion.getAttribute("Nombre"); out.println(Nombre);%>" required>
        </label>
        <label>Apellidos
            <input type="text" name="Apellidos" size="30" placeholder="apellidos" value="<%String Apellidos = (String)sesion.getAttribute("Apellidos"); out.println(Apellidos);%>" required>
        </label>
        <br/><br/>
        <label>fecha de nacimiento
            <input type="date" name="FechaNacimiento" value="<%String FechaNacimiento = (String)sesion.getAttribute("FechaNacimiento"); out.println(FechaNacimiento);%>" size="80"  required>
        </label>
        <br/>
        <br/>
        Genero ->
        <label>Mujer
            <input type="radio" name="Genero" value="Mujer"/>
        </label>
        <label>Hombre
            <input type="radio" name="Genero" value="Hombre"/>
        </label>
        <label> Otro
            <input type="radio" name="Genero" value="Otro"/>
        </label>
        <br/><br/>
        <label>Casado o Pareja de Hecho
            <input type="checkbox" name="Relacion" value="Pareja">
        </label>
        <label> Hijos
            <input type="checkbox" name="Relacion" value="Hijos">
        </label>
        <br/><br/>
        Nacionalidades
        <select name="Nacionalidad">
            <option>Española</option>
            <option>Francesa</option>
            <option>Italiana</option>
            <option>Portuguesa</option>
        </select>
        <br/><br/>
        <input type="submit" value="Grabar informacion e ir al paso 2-Datos Profesionales"/>
    </form>
</fieldset>
</body>
</html>
