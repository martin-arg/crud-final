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

//    public boolean tieneClientes(String username) throws SQLException {
//        PreparedStatement ps;
//        ResultSet rs;
//        ps = connection.prepareStatement("SELECT * FROM clientes WHERE oficial = ? ");
//        ps.setString(1, username);
//        rs = ps.executeQuery();
//
//        return rs.next();
//
//    }

    public List<Clientes> getClientes(String userName) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        List<Clientes> clientesDB = new ArrayList<>();

        ps = connection.prepareStatement("SELECT * FROM clientes WHERE oficial = ?");
        ps.setString(1, userName);
        rs = ps.executeQuery();

        while (rs.next()) {

            int id = rs.getInt("id");
            String nombre = (rs.getString("nombre"));
            String apellido = (rs.getString("apellido"));
            String telefono = (rs.getString("telefono"));
            String email = (rs.getString("email"));
            String compania = (rs.getString("compania"));
            Clientes clientes = new Clientes(id, nombre, apellido, telefono, email, compania);
            clientesDB.add(clientes);
        }
        return clientesDB;
    }


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

        boolean exito = (rs.next());
            ps.close();
            rs.close();
            connection.close();
        return exito;
    }


    public boolean deleteCliente (int id) throws SQLException {
        PreparedStatement ps;


        ps = connection.prepareStatement("delete from clientes where id = ?");
        ps.setInt(1, id);
        int row = ps.executeUpdate();
        ps.close();
        connection.close();



        if (row == 1) {
            return true;
        }

        return false;
    }



    public Clientes getCliente(int id) throws SQLException {
        PreparedStatement preparedST;
        ResultSet resultST;
        Clientes cliente = null;

        preparedST = connection.prepareStatement("select * from clientes where id = ?");
        preparedST.setInt(1, id);
        resultST = preparedST.executeQuery();
        if (resultST.next()){
            String name = resultST.getString("nombre");
            String lastname = resultST.getString("apellido");
            String phone = resultST.getString("telefono");
            String email = resultST.getString("email");
            String compania = resultST.getString("compania");
            cliente = new Clientes(id, name, lastname, phone, email, compania );
        }
        preparedST.close();
        resultST.close();
        connection.close();

        return cliente;
    }

    public boolean modificarCliente (int id, String nombre, String apellido, String telefono, String email, String compania) throws SQLException {
        PreparedStatement ps;
        //ResultSet rs;


        ps = connection.prepareStatement("UPDATE clientes set nombre = ?, apellido = ?, telefono = ?, email = ?, compania = ? where id = ?");
        ps.setString(1, nombre);
        ps.setString(2, apellido);
        ps.setString(3, telefono);
        ps.setString(4, email);
        ps.setString(5, compania);
        ps.setInt(6, id);
        int row = ps.executeUpdate();


/*        ps = connection.prepareStatement("SELECT * FROM clientes WHERE nombre = ? and apellido = ? and telefono = ? and email = ? and compania = ?");
        ps.setString(1, nombre);
        ps.setString(2, apellido);
        ps.setString(3, telefono);
        ps.setString(4, email);
        ps.setString(5, compania);
        rs = ps.executeQuery();*/

        //boolean exito = (rs.next());
        ps.close();
        //rs.close();
        connection.close();
        //return exito;
        if (row == 1) {
            return true;
        }

        return false;
    }


}
