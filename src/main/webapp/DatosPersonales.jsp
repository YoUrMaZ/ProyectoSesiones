<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DatosPersonales</title>
</head>
<body>
<fieldset>Datos personales
<form name="Formulario_datos" method="post" action="DatosPersonales">
    <p>Datos personales </p>
    <label>
        <input type="text" name="Nombre" size="30" placeholder="Nombre" required>
    </label>
    <label>Apellidos
        <input type="text" name="Apellidos" size="30" placeholder="apellidos" required>
    </label>
    <br/><br/>
    <label>fecha de nacimiento
        <input type="date" name="FechaNacimiento" value="Fecha de nacimiento" size="80" required>
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
        <input type="submit" value="Grabar informacion e ir al paso 2-Datos Profesionales"/>

</form>
</fieldset>
</body>
</html>
