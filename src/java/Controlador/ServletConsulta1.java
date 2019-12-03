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
            String mes;

            qry = "SELECT * FROM encuestaP where mes <> 'Diciembre';";
            PreparedStatement pstmt = con.prepareStatement(qry);
            ResultSet results = pstmt.executeQuery();

            while (results.next()) {
                nombreEncuesta = results.getString("nombreEncuesta");
                pregunta1 = results.getString("pregunta1");
                pregunta2 = results.getString("pregunta2");
                opcion1 = results.getString("opcion1");
                opcion2 = results.getString("opcion2");
                opcion3 = results.getString("opcion3");
                opcion4 = results.getString("opcion4");
                opcion5 = results.getString("opcion5");
                opcion6 = results.getString("opcion6");
                mes = results.getString("mes");

                out.print("<div class=\"card\">\n"
                        + "                                <div class=\"card-header\" id=\"headingOne\">\n"
                        + "                                    <h5 class=\"mb-0\">\n"
                        + "                                        <button class=\"btn btn-link\" data-toggle=\"collapse\" data-target=\"#" + mes + "\" aria-expanded=\"true\" aria-controls=\"collapseOne\">\n"
                        + "                                            Encuesta de: " + mes + "\n"
                        + "                                        </button>\n"
                        + "                                    </h5>\n"
                        + "                                </div>\n"
                        + "                                <div id=\"" + mes + "\" class=\"collapse collapsed\" aria-labelledby=\"headingOne\" data-parent=\"#accordion\">\n"
                        + "                                    <div class=\"card-body\">\n"
                        + "                                        <h3 class=\"text-center\">" + nombreEncuesta + "</h3><br>\n"
                        + "                                        <label> " + pregunta1 + "</label><br>\n"
                        + "                                        <label><i style=\"font-size:16px\" class=\"fa\">&#xf058;</i> " + opcion1 + "</label><br>\n"
                        + "                                        <label><i style=\"font-size:16px\" class=\"fa\">&#xf058;</i> " + opcion2 + "</label><br>\n"
                        + "                                        <label><i style=\"font-size:16px\" class=\"fa\">&#xf058;</i> " + opcion3 + "</label><br>\n"
                        + "                                        <label> " + pregunta2 + "</label><br>\n"
                        + "                                        <label><i style=\"font-size:16px\" class=\"fa\">&#xf058;</i> " + opcion4 + "</label><br>\n"
                        + "                                        <label><i style=\"font-size:16px\" class=\"fa\">&#xf058;</i> " + opcion5 + "</label><br>\n"
                        + "                                        <label><i style=\"font-size:16px\" class=\"fa\">&#xf058;</i> " + opcion6 + "</label><br>\n"
                        + "                                    </div>\n"
                        + "                                </div>\n"
                        + "                            </div>");
                
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
