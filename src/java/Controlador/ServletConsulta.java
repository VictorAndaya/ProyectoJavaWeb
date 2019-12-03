/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author andaya
 */
@WebServlet(name = "ServletConsulta", urlPatterns = {"/ServletConsulta"})
public class ServletConsulta extends HttpServlet {

    private DataSource fuenteDatos = null;

    public void init(ServletConfig config)
            throws ServletException {
        try {
            Context ctx = new InitialContext();
            fuenteDatos = (DataSource) ctx.lookup("java:comp/env/jdbc/ejemploBD");
        } catch (Exception e) {
            throw new ServletException("Irrecuperable java:comp/env/jdbc/ejemploBD", e);
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        response.setHeader("Cache-control", "no-cache");
        response.setHeader("Cache-control", "no-store");
        response.setDateHeader("Expires", 0);

        PrintWriter out = response.getWriter();
        String qry, msg;
        Connection con = null;
        try {
            synchronized (fuenteDatos) {
                con = fuenteDatos.getConnection();
            }
            if (con == null) {
                out.println("Error al recuperar la conexion, es nula <br/>");
                throw new ServletException("Problemas con la conexion <br/>");
            }
            final String correo = request.getParameter("correo");
            final String pass = request.getParameter("contrasena");
            final String nombre;
            final String email;
            final Integer tipo;
            qry = "SELECT nombre,email,tipo FROM usuarios where email='" + correo
                    + "' and contrasena='" + pass + "';";
            PreparedStatement pstmt = con.prepareStatement(qry);
            ResultSet results = pstmt.executeQuery();
            if (results.next()) {
                nombre = results.getString("nombre");
                email = results.getString("email");
                tipo = results.getInt("tipo");
                
                HttpSession sesionOk = request.getSession();
                sesionOk.setAttribute("nombre", nombre);
                sesionOk.setAttribute("email", email);
                sesionOk.setAttribute("tipo", tipo);
                
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }

        } catch (Exception e) {
            out.println("Error al procesar consulta" + e.getMessage() + "<br/>");
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                out.println("Error en proceso" + e.getMessage() + "<br/>");
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
