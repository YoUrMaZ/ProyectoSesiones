<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="Formulario_compra" action="Lista_compra.jsp">
    <p>Articulos: </p>
    <label>
        <input type="checkbox" name="articulos" value="aqua">Agua
    </label>
    <br/>
    <label>
        <input type="checkbox" name="articulos" value="leche">leche
    </label>
    <br/>
    <label>
        <input type="checkbox" name="articulos" value="pan">Agua
    </label>
    <br/>
    <label>
        <input type="checkbox" name="articulos" value="aqua">pan
    </label>
    <br/>
    <label>
        <input type="checkbox" name="articulos" value="manzanas">manzanas
    </label>
    <br/>
<input name="intro" value="enviar" type="submit"/>
</form>

<h2>Carro de la compra </h2>

<ul>
<%
    List<String> ListaElementos = (List<String>) session.getAttribute("misElementos");

    if (ListaElementos == null){
        ListaElementos = new ArrayList<String>();
        session.setAttribute("misElementos", ListaElementos);
    }

    String[] elementos = request.getParameterValues("articulos");


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
