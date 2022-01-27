package model;

public class User {
    private String name;
    private String password;
    private String lastname;
    private String email;
    private int phone;


    public User(String email, String password) {
        this.password = password;
        this.email = email;
    }

    public User(String name, String lastname, String password, String email, int phone) {
        this.name = name;
        this.password = password;
        this.lastname = lastname;
        this.email = email;
        this.phone = phone;
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

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }
}
