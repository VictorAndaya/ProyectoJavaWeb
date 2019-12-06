/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author andaya
 */
@WebServlet(name = "Redireccion", urlPatterns = {"/Redireccion"})
public class Redireccion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Cache-control", "no-cache");
        response.setHeader("Cache-control", "no-store");
        response.setDateHeader("Expires", 0);

        HttpSession sesionOk;
        sesionOk = request.getSession();
        String user = (String) sesionOk.getAttribute("Usuario");
        String ubicacion = request.getParameter("pagina");

        if (ubicacion.equals("nosotros")) {
            response.sendRedirect("nosotros.jsp");
        }
        if (ubicacion.equals("login")) {
            response.sendRedirect("login.jsp");
        }
        if (ubicacion.equals("suscribirme")) {
            response.sendRedirect("suscribirme.jsp");
        }
        if (ubicacion.equals("registro")) {
            response.sendRedirect("registro.jsp");
        }
        if (ubicacion.equals("eventos")) {
            response.sendRedirect("eventos.jsp");
        }
        if (ubicacion.equals("contacto")) {
            response.sendRedirect("contacto.jsp");
        }
        if (ubicacion.equals("encuesta")) {
            response.sendRedirect("encuesta.jsp");
        }
        if (ubicacion.equals("usuarios")) {
            response.sendRedirect("usuarios.jsp");
        }
        if (ubicacion.equals("nueva")) {
            response.sendRedirect("nuevaEncuesta.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
