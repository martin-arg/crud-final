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

    public User getUser(int id) throws SQLException {
        PreparedStatement preparedST;
        ResultSet resultST;
        User user = null;

        preparedST = connection.prepareStatement("select * from usuarios where id = ?");
        preparedST.setInt(1, id);
        resultST = preparedST.executeQuery();
        if (resultST.next()){
            String username = resultST.getString("nombre");
            String lastname = resultST.getString("apellido");
            String email = resultST.getString("email");
            int phone = resultST.getInt("phone");
            String password = resultST.getString("password");
            user = new User(username, lastname, password, email, phone );
        }

                return user;
    }

    public boolean login(String userInput, String passInput) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        ps = connection.prepareStatement("SELECT email, password FROM usuarios WHERE email = ? AND password = ? ");
        ps.setString(1, userInput);
        ps.setString(2, passInput);
        rs = ps.executeQuery();

/*        rs.close();
        ps.close();
        connection.close();*/
        return rs.next();
    }

/*        if (rs.next()){
            //String user = rs.getString("email");
            //String password = rs.getString("password");
            //if (userInput.equals(user) && passInput.equals(password)){
                return true;
            }
        } return false;*/
    }



