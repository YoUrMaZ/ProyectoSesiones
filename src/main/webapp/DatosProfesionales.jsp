<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Datos Profesionales</title>
</head>
<body>
<%
    HttpSession sesion = request.getSession(true);
%>
<a href="../../../../ProyectoSesiones/src/main/webapp/DatosPersonales.jsp">
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
<form name="Formulario_profesional" action="DatosProfesionales" method="post">
    <fieldset>Datos Profesionales<hr/>

    <select name="Espec">
        <option>Marketing</option>
        <option>Finanzas</option>
        <option>investigacion</option>
    </select>
    <br/><br/>
    <label>Salario
    </label>
    <input name="Salario" type="number" value="<%String Genero = (String) sesion.getAttribute("Genero"); out.println(Genero);%>" step="0.01"/>
    <br/><br/>
    Comentarios
    <textarea name="AreaText"></textarea>
        <br/><br/>
        <input type="submit" value="Grabar informacion e ir al paso 3 - Datos bancarios"/>
    </fieldset>
</form>


</body>
</html>
