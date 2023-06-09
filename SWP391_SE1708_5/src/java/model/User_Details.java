package model;

public class User_Details {

    private String user_id;
    private String gender;
    private String phone_number;
    private String email;
    private String address;
    private String password;
    private String link_image;
    private Double balance;
    private String description;

    public User_Details() {
    }

    public User_Details(String user_id, String gender, String phone_number, String email, String address, String password, String link_image, Double balance, String description) {
        this.user_id = user_id;
        this.gender = gender;
        this.phone_number = phone_number;
        this.email = email;
        this.address = address;
        this.password = password;
        this.link_image = link_image;
        this.balance = balance;
        this.description = description;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLink_image() {
        return link_image;
    }

    public void setLink_image(String link_image) {
        this.link_image = link_image;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    

    

    @Override
    public String toString() {
        return "User_Details{" + "user_id=" + user_id + ", gender=" + gender + ", phone_number=" + phone_number + ", gmail=" + email + ", address=" + address + ", password=" + password + ", link_image=" + link_image + ", balance=" + balance +", description=" + description + '}';
    }
}
