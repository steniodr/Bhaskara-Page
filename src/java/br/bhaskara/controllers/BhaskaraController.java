package br.bhaskara.controllers;

import br.bhaskara.Bhaskara;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BhaskaraController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int a, b, c;
            int[] resul;
            
            a = Integer.parseInt(request.getParameter("valueA"));
            b = Integer.parseInt(request.getParameter("valueB"));
            c = Integer.parseInt(request.getParameter("valueC"));
            
            if (a == 0) {
                response.sendRedirect("index.jsp?delta=-666");
            }
            else{
                resul = Bhaskara.equationBhaskara(a, b, c);
                if (resul[0] >= 0){
                    response.sendRedirect("index.jsp?delta=" + resul[0]);
                } else {
                    response.sendRedirect("index.jsp?delta=" + resul[0] + "&x1=" + resul[1] + "&x2=" + resul[2]);
                } 
            }
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
