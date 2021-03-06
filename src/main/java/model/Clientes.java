package model;

public class Clientes {
    private int id;
    private String nombre;
    private String apellido;
    private String telefono;
    private String email;
    private String compania;
    private String adminCuenta;

    public Clientes(int id, String nombre, String apellido, String telefono, String email, String compania, String adminCuenta) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.email = email;
        this.compania = compania;
        this.adminCuenta = adminCuenta;
    }

    public Clientes(int id, String nombre, String apellido, String telefono, String email, String compania) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.email = email;
        this.compania = compania;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompania() {
        return compania;
    }

    public void setCompania(String compania) {
        this.compania = compania;
    }

    public String getAdminCuenta() {
        return adminCuenta;
    }

    public void setAdminCuenta(String adminCuenta) {
        this.adminCuenta = adminCuenta;
    }
}

