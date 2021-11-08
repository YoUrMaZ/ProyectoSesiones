<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="Formulario_bancario" action="DatosBancarios.jsp">
    <label>Cuenta corriente
        <input type="text" name="Datos2" maxlength="24" size="70"/>
    </label>
    <br/>
    <form method="post" action="DatosProfesionales.jsp">
        <input type="submit"/>
    </form>
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
