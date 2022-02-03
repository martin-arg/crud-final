package model;

public class User {
    private String userName;
    private String name;
    private String password;
    private String lastname;
    private String email;
    private String phone;


    public User(String userName, String password) {
        this.password = password;
        this.userName = userName;
    }

    public User(String userName, String name, String lastname, String password, String email, String phone) {
        this.userName = userName;
        this.name = name;
        this.password = password;
        this.lastname = lastname;
        this.email = email;
        this.phone = phone;
    }



    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
