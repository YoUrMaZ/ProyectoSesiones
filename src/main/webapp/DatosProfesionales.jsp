<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Datos Profesionales</title>
</head>
<body>
<form name="Formulario_profesional" action="DatosProfesionales.jsp">
    <select name="Datos3">
        <option>Marketing</option>
        <option>Finanzas</option>
        <option>investigacion</option>
    </select>
    <br/><br/>
    <label>Salario
        <input name="Datos3" type="number" step="0.01"/>
    </label>
    <br/><br/>
    Comentarios
    <textarea name="Datos3"></textarea>
    <form method="post" action="DatosBancarios.jsp">
        <input type="submit"/>
    </form>
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
