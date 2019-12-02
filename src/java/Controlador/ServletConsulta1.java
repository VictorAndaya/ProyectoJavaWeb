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
@WebServlet(name = "ServletConsulta1", urlPatterns = {"/ServletConsulta1"})
public class ServletConsulta1 extends HttpServlet {

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
            String nombreEncuesta;
            String pregunta1;
            String pregunta2;
            String opcion1;
            String opcion2;
            String opcion3;
            String opcion4;
            String opcion5;
            String opcion6;
            String mes = request.getParameter("meses");
            
            qry = "SELECT nombreEncuesta,pregunta1,pregunta2,opcion1,opcion2,opcion3,opcion4,opcion5,opcion6 FROM encuestaP where mes = '" + mes + "';";
            PreparedStatement pstmt = con.prepareStatement(qry);
            ResultSet results = pstmt.executeQuery();
            if (results.next()) {
                nombreEncuesta = results.getString("");
                pregunta1 = results.getString("");
                pregunta2 = results.getString("");
                opcion1 = results.getString("");
                opcion2 = results.getString("");
                opcion3 = results.getString("");
                opcion4 = results.getString("");
                opcion5 = results.getString("");
                opcion6 = results.getString("");

                HttpSession sesionOk = request.getSession();
                sesionOk.putValue("nombreEncuesta", nombreEncuesta);
                sesionOk.putValue("pregunta1", pregunta1);
                sesionOk.putValue("pregunta2", pregunta2);
                sesionOk.putValue("opcion1", opcion1);
                sesionOk.putValue("opcion2", opcion2);
                sesionOk.putValue("opcion3", opcion3);
                sesionOk.putValue("opcion4", opcion4);
                sesionOk.putValue("opcion5", opcion5);
                sesionOk.putValue("opcion6", opcion6);

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
