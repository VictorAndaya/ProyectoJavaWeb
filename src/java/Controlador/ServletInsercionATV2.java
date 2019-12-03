/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author andaya
 */
@WebServlet(name = "ServletInsercionATV2", urlPatterns = {"/ServletInsercionATV2"})
public class ServletInsercionATV2 extends HttpServlet {

    private DataSource fuenteDatos = null;

    @Override
    public void init(ServletConfig config) throws ServletException {
        try {
            Context ctx = new InitialContext();
            fuenteDatos = (DataSource) ctx.lookup("java:comp/env/jdbc/ejemploBD");
        } catch (Exception e) {
            throw new ServletException("imposible recuperar fuente de datos");
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String nombreEncuesta = request.getParameter("nombreEncuesta");
        String pregunta1 = request.getParameter("pregunta1");
        String pregunta2 = request.getParameter("pregunta2");
        String opcion1 = request.getParameter("opcion1");
        String opcion2 = request.getParameter("opcion2");
        String opcion3 = request.getParameter("opcion3");
        String opcion4 = request.getParameter("opcion4");
        String opcion5 = request.getParameter("opcion5");
        String opcion6 = request.getParameter("opcion6");
        String mes = request.getParameter("mes");
        Connection conn = null; //conexion parcial
        
        try {
            synchronized (fuenteDatos) {
                conn = (Connection) fuenteDatos.getConnection();
                if (conn == null) {
                    throw new ServletException("Problemas de conexion <br>");
                }
                Statement stmt = (Statement) conn.createStatement();
                String qry = "insert into encuestaP values ('" + nombreEncuesta + "','" + pregunta1 + "','" + pregunta2 + "','" + opcion1 + "','" + opcion2 + "','" + opcion3 + "','" + opcion4 + "','" + opcion5 + "','" + opcion6 + "','" + mes + "');";
                stmt.executeUpdate(qry);
            }
        } catch (Exception e) {
            out.println("Falla Inserción "+e.getMessage());

        } finally {
            try {
                conn.close();
            } catch (Exception e) {
                throw new ServletException("Error en proceso" + e.getMessage() + "<br/>");
            }
        }
        
        out.close();
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
     *conn
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
