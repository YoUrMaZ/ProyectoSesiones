<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DatosPersonales</title>
</head>
<body>
<form name="Formulario_datos" action="datosPersonales">
    <p>Datos personales </p>
    <label>
        <input type="text" name="Datos1" size="30" placeholder="Nombre" required>
    </label>
    <label>Apellidos
        <input type="text" name="Datos1" size="30" placeholder="apellidos" required>
    </label>
    <br/><br/>
    <label>fecha de nacimiento
        <input type="date" name="Datos1" value="Fecha de nacimiento" size="80" required>
    </label>
    <br/>
    <br/>
    Genero ->
    <label>Mujer
        <input type="radio" name="Datos1" value="Mujer"/>
    </label>
    <label>Hombre
        <input type="radio" name="Datos1" value="Hombre"/>
    </label>
    <label> Otro
        <input type="radio" name="Datos1" value="Otro"/>
    </label>
    <br/><br/>
    <label>Casado o Pareja de Hecho
        <input type="checkbox" name="Datos1" value="Pareja">
    </label>
    <label> Hijos
        <input type="checkbox" name="Datos1" value="Hijos">
    </label>
    <br/><br/>
    Nacionalidades
    <select name="Datos1">
        <option>Española</option>
        <option>Francesa</option>
        <option>Italiana</option>
        <option>Portuguesa</option>
    </select>
    <form method="post" action="DatosBancarios.jsp">
        <input type="submit"/>
    </form>
</form>

</form>
<ul>


    <%
        List<String> ListaElementos = (List<String>) session.getAttribute("DatosPersonales1");

        if (ListaElementos == null){
            ListaElementos = new ArrayList<String>();
            session.setAttribute("DatosPersonales1", ListaElementos);
        }

        String[] elementos = request.getParameterValues("Datos1");


        if (elementos != null){
            for (String elementoTemp: elementos){

                ListaElementos.add(elementoTemp);
            }
        }
        for(String elemTemp: ListaElementos){
            out.println("<li>" + elemTemp + "</li>");
        }
    %>

</ul>
</body>
</html>
