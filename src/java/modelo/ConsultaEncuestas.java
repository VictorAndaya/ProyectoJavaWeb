package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class ConsultaEncuestas {

    public static LinkedList<Encuestas> getEncuestas() {
        LinkedList<Encuestas> listaContactos = new LinkedList<Encuestas>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection(
                    "jdbc:mysql://localhost/musicaitz_agk_atv_eha", "root", "andaya");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select NombreEncuesta,pregunta1,pregunta2,opcion1,opcion2,opcion3,opcion4,opcion5,opcion6 from encuestaP where mes = 'Diciembre'");
            while (rs.next()) {
                Encuestas encuesta = new Encuestas();
                encuesta.setNombreEncuesta(rs.getString("NombreEncuesta"));
                encuesta.setPregunta1(rs.getString("pregunta1"));
                encuesta.setPregunta2(rs.getString("pregunta2"));
                encuesta.setOpcion1(rs.getString("opcion1"));
                encuesta.setOpcion2(rs.getString("opcion2"));
                encuesta.setOpcion3(rs.getString("opcion3"));
                encuesta.setOpcion4(rs.getString("opcion4"));
                encuesta.setOpcion5(rs.getString("opcion5"));
                encuesta.setOpcion6(rs.getString("opcion6"));
                listaContactos.add(encuesta);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaContactos;
    }
}
