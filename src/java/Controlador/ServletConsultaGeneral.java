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
import javax.sql.DataSource;

/**
 *
 * @author andaya
 */
@WebServlet(name = "ServletConsultaGeneral", urlPatterns = {"/ServletConsultaGeneral"})
public class ServletConsultaGeneral extends HttpServlet {

    private DataSource fuenteDatos = null;

    public void init(ServletConfig config)
            throws ServletException {
        try {
            Context ctx = new InitialContext();
            fuenteDatos = (DataSource) ctx.lookup("java:comp/env/jdbc/ejemploBD");
        } catch (Exception e) {
            throw new ServletException("Imposible recuperar java:comp/env/jdbc/ejemploBD", e);
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        String qry;
        Connection con = null;
        try {
            synchronized (fuenteDatos) {
                con = fuenteDatos.getConnection();
            }
            if (con == null) {
                throw new ServletException("Problemas con la conexion <br/>");
            }
            qry = "SELECT * FROM eventos;";
            PreparedStatement pstmt = con.prepareStatement(qry);
            ResultSet results = pstmt.executeQuery();

            out.println("<section class=\"seccion contenedor\">");
            out.println("<div class=\"contenido\">");
            out.println("<div class=\"calendario\">");
            while (results.next()) {
                out.println("<div class='dia'>");
                out.println("<p class='titulo'>" + results.getString("nombreEvento") + "</p> "
                        + "<p><i style=\"font-size:24px\" class=\"fa\">&#xf073;</i> " + results.getString("fechaEvento") + "</p> "
                        + "<p class='hora'><i style=\"font-size:24px\" class=\"fa\">&#xf017;</i> " + results.getString("horaEvento") + "</p><br>");
                out.println("</div>");

            }
            out.println("</div>");
            out.println("</div>");
            out.println("</section>");
            out.println("<footer class=\"site-footer\">\n"
                    + "            <div class=\"contenedor clearfix\">\n"
                    + "                <div class=\"footer-informacion\">\n"
                    + "                    <h3>Sobre <span>Musica ITZ</span></h3>\n"
                    + "                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae,rem excepturi eum ullam blanditiis expedita.</p>\n"
                    + "\n"
                    + "                </div>\n"
                    + "                <div class=\"ultimos-tweets\">\n"
                    + "                    <h3>Ultimos <span>Tweets</span></h3>\n"
                    + "                    <ul>\n"
                    + "                        <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. numquam facilis saepe quaerat laboriosam sed suscipit quibusdam autem dicta natus libero.</li>\n"
                    + "\n"
                    + "                    </ul>\n"
                    + "                </div>\n"
                    + "                <div class=\"menu\">\n"
                    + "                    <h3>Redes <span>Sociales</span></h3>\n"
                    + "                    <nav class=\"redes-sociales\">\n"
                    + "                        <a href=\"\"><i class=\"fab fa-facebook\"></i></a>\n"
                    + "                        <a href=\"\"><i class=\"fab fa-twitter\"></i></a>\n"
                    + "                        <a href=\"\"><i class=\"fab fa-youtube\"></i></a>\n"
                    + "                        <a href=\"\"><i class=\"fab fa-instagram\"></i></a>\n"
                    + "                    </nav>\n"
                    + "                </div>\n"
                    + "            </div>\n"
                    + "            <p class=\"copyright\">\n"
                    + "                Todos los derechos Reservados Musica ITZ 2019.\n"
                    + "            </p>\n"
                    + "        </footer>");
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
