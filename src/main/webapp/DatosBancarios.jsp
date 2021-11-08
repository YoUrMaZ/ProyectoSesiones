<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="Formulario_bancario" action="datosBancarios">
    <label>Cuenta corriente
        <input type="text" name="Cuenta" maxlength="24" size="70"/>
    </label>
    <br/>
        <input type="submit" value="Grabar informacion e ir al resumen final"/>
</form>
<ul>
<%
    List<String> ListaElementos = (List<String>) session.getAttribute("misElementos2");

    if (ListaElementos == null){
        ListaElementos = new ArrayList<String>();
        session.setAttribute("misElementos", ListaElementos);
    }

    String[] elementos = request.getParameterValues("Datos2");


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
