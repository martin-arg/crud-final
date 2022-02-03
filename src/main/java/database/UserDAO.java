package database;

import config.DBConn;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class UserDAO {
    Connection connection;


    public UserDAO(){
        DBConn conn = new DBConn();
        connection = conn.getConnection("banco", "root", "919092mg");
    }

    public User getUser(String userName) throws SQLException {
        PreparedStatement preparedST;
        ResultSet resultST;
        User user = null;

        preparedST = connection.prepareStatement("select * from usuarios where userName = ?");
        preparedST.setString(1, userName);
        resultST = preparedST.executeQuery();
        if (resultST.next()){
            String username = resultST.getString("usuario");
            String name = resultST.getString("nombre");
            String lastname = resultST.getString("apellido");
            String email = resultST.getString("email");
            String phone = resultST.getString("phone");
            String password = resultST.getString("password");
            user = new User(username, name, lastname, password, email, phone );
        }
        preparedST.close();
        resultST.close();
        connection.close();

        return user;
    }


    public boolean login(String userInput, String passInput) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        ps = connection.prepareStatement("SELECT usuario, password FROM usuarios WHERE usuario = ? AND password = ? ");
        ps.setString(1, userInput);
        ps.setString(2, passInput);
        rs = ps.executeQuery();
        boolean login =  rs.next();
        ps.close();
        rs.close();
        connection.close();

        return login;
    }

}
