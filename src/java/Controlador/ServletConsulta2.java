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
@WebServlet(name = "ServletConsulta2", urlPatterns = {"/ServletConsulta2"})
public class ServletConsulta2 extends HttpServlet {

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

            String nombre;
            String emailC;
            String contra;
            Integer tipoU;
            String apaterno;
            String amaterno;

            qry = "SELECT * FROM usuarios;";
            PreparedStatement pstmt = con.prepareStatement(qry);
            ResultSet results = pstmt.executeQuery();
            out.print("<table class=\"table table-hover\">\n"
                    + "  <thead class=\"thead-dark\">\n"
                    + "    <tr>\n"
                    + "      <th scope=\"col\">Nombre</th>\n"
                    + "      <th scope=\"col\">Apellido Paterno</th>\n"
                    + "      <th scope=\"col\">Apellido Materno</th>\n"
                    + "      <th scope=\"col\">Email</th>\n"
                    + "      <th scope=\"col\">Contraseña</th>\n"
                    + "      <th scope=\"col\">Tipo de Usuario</th>\n"
                    + "    </tr>\n"
                    + "  </thead>\n");
            while (results.next()) {
                emailC = results.getString("email");
                contra = results.getString("contrasena");
                nombre = results.getString("nombre");
                apaterno = results.getString("apaterno");
                amaterno = results.getString("amaterno");
                tipoU = results.getInt("tipo");

                out.print("<tbody>\n"
                        + "    <tr>\n"
                        + "      <td> " + nombre + "</td>\n"
                        + "      <td> " + apaterno + "</td>\n"
                        + "      <td> " + amaterno + "</td>\n"
                        + "      <td> " + emailC + "</td>\n"
                        + "      <td> " + contra + "</td>\n"
                        + "      <td> " + tipoU + "</td>\n"
                        + "    </tr>"
                        + "  </tbody>\n");
            }
            out.print("</table>");
        } catch (Exception e) {
            out.println("Error al procesar consulta" + e.getMessage() + "<br/>");
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                out.println("Error en proceso" + e.getMessage() + "<br/>");
            }
        }
        //out.close();
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
