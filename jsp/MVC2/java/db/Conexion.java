package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {

    private Connection cone;

    public Conexion() {
        String host;
        String port;
        String user;
        String password;
        String db;
        String puente;
        String driver;

        host = "localhost";
        port = "5432";
        user = "efi";
        password = "efi";
        db = "efidb";
        puente = "postgresql";
        driver = "org.postgresql.Driver";
        String url = null;

        try {
            // We register the PostgreSQL driver
            // Registramos el driver de PostgresSQL
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException ex) {
                System.out.println("Error al registrar el driver de PostgreSQL: " + ex);
            }
            url = "jdbc:" + puente + "://" + host + ":" + port + "/" + db;
            this.cone = DriverManager.getConnection(url, user, password);

        } catch (java.sql.SQLException sqle) {
            System.out.println("Error al conectar con la base de datos de PostgreSQL (" + url + "): " + sqle);
        }
    }

    public ResultSet consultarSql(String strSql) {


        ResultSet rsrta;
        try {
            Statement s = this.cone.createStatement();
            rsrta = s.executeQuery(strSql);
            return rsrta;

        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public int ejecutarSql(String strSql) {
        int rta = 0;
        try {
            rta = cone.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE).executeUpdate(strSql);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rta;
    }

    public void cerrar() throws SQLException {
        this.cone.close();
    }
}
