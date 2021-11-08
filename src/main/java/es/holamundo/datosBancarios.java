package es.holamundo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/datosBancarios")
public class datosBancarios extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            HttpSession sesion = request.getSession(true);
            if (request.getSession(false) != null) {
                request.getSession().invalidate();
            } else {
                String Cuenta = request.getParameter("Cuenta");
                sesion.setAttribute("Cuenta", Cuenta);
                getServletContext().getRequestDispatcher("Resumen.jsp").forward(request,response);

            }
        } catch (Exception e) {
            out.println("Se produce una excepción <br />");
            out.println(e.getMessage());
        }
    }
            protected void doGet (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
            }
        }
