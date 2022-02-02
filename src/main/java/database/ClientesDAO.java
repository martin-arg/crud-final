package database;

import config.DBConn;
import model.Clientes;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClientesDAO {
    Connection connection;

    public ClientesDAO() {
        DBConn conn = new DBConn();
        connection = conn.getConnection("banco", "root", "919092mg");
    }

    public boolean tieneClientes(String username) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        ps = connection.prepareStatement("SELECT * FROM clientes WHERE oficial = ? ");
        ps.setString(1, username);
        rs = ps.executeQuery();

        return rs.next();

    }

    public List<Clientes> getClientes(String userName) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        List<Clientes> clientesDB = new ArrayList<>();

        ps = connection.prepareStatement("SELECT * FROM clientes WHERE oficial = ?");
        ps.setString(1, userName);
        rs = ps.executeQuery();

        while (rs.next()) {

            String nombre = (rs.getString("nombre"));
            String apellido = (rs.getString("apellido"));
            String telefono = (rs.getString("telefono"));
            String email = (rs.getString("email"));
            String compania = (rs.getString("compania"));
            Clientes clientes = new Clientes(nombre, apellido, telefono, email, compania);
            clientesDB.add(clientes);
        }
        return clientesDB;
    }

    // TODO: 28/1/2022 traer todos los clientes segun usuario el usuario activo.
// SELECT * FROM banco.clientes Where usuario = 3;
// TODO: 28/1/2022 agregar un cliente nuevo (debe estar asociado al usuario activo)
    public boolean createClient(String nombre, String apellido, String telefono, String email, String compania, String adminCuenta) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;


        ps = connection.prepareStatement("insert into `clientes` (`nombre`,`apellido`,`telefono`,`email`,`compania`,`oficial`) values (?, ?, ?, ?, ?, ?);");
        ps.setString(1, nombre);
        ps.setString(2, apellido);
        ps.setString(3, telefono);
        ps.setString(4, email);
        ps.setString(5, compania);
        ps.setString(6, adminCuenta);
        ps.executeUpdate();


        ps = connection.prepareStatement("SELECT * FROM clientes WHERE nombre = ? and  apellido = ?");
        ps.setString(1, nombre);
        ps.setString(2, apellido);
        rs = ps.executeQuery();
        if (rs.next()) {
            return true;
        }
        return false;
    }
// insert into `clientes` (`nombre`,`apellido`,`telefono`,`email`,`compania`,`usuario`) values (?, ?, ?, ?, ?, ?);
// TODO: 28/1/2022 modificar un cliente, solo quien es el admin de la cuenta
// TODO: 28/1/2022 borrar un cliente
}
