<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Datos Profesionales</title>
</head>
<body>
<form name="Formulario_profesional" action="DatosProfesionales" method="post">
    <select name="Espec">
        <option>Marketing</option>
        <option>Finanzas</option>
        <option>investigacion</option>
    </select>
    <br/><br/>
    <label>Salario
    </label>
    <input name="Salario" type="number" step="0.01"/>
    <br/><br/>
    Comentarios
    <textarea name="AreaText"></textarea>
        <input type="submit" value="Grabar informacion e ir al paso 3 - Datos bancarios"/>

</form>
<h2>Carro de la compra </h2>

<ul>
    <%
        List<String> ListaElementos = (List<String>) session.getAttribute("misElementos3");

        if (ListaElementos == null){
            ListaElementos = new ArrayList<String>();
            session.setAttribute("misElementos3", ListaElementos);
        }

        String[] elementos = request.getParameterValues("Datos3");


        if (elementos != null){
            for (String elementoTemp: elementos){
                //out.println("<li>" + elementoTemp + "</li>");

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
