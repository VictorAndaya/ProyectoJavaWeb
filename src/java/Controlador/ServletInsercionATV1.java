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
@WebServlet(name = "ServletInsercionATV1", urlPatterns = {"/ServletInsercionATV1"})
public class ServletInsercionATV1 extends HttpServlet {

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
        
        String respuesta1 = request.getParameter("pregunta1");
        String respuesta2 = request.getParameter("pregunta2");
        String comentarios = request.getParameter("comentarios");
        String email = request.getParameter("email");
        String nombreEncu = request.getParameter("nombreEncu");
        Connection conn = null; //conexion parcial
        
        try {
            synchronized (fuenteDatos) {
                conn = (Connection) fuenteDatos.getConnection();
                if (conn == null) {
                    throw new ServletException("Problemas de conexion <br>");
                }
                Statement stmt = (Statement) conn.createStatement();
                String qry = "insert into encuesta (respuesta1, respuesta2, comen, email, nombreEncuesta) values ('" + respuesta1 + "','" + respuesta2 + "','" + comentarios + "','" + email + "','" + nombreEncu + "');";
                stmt.executeUpdate(qry);
                response.sendRedirect("login.jsp");
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
