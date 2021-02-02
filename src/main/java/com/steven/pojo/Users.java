package com.steven.pojo;

public class Users {

    private int userID;
    private String userName;
    private String passWord;
    private String email;
    private String sex;
    private String phone;
    private int admin;

    public Users() {

    }

    public Users(int userID, String userName, String passWord, String email, String sex, String phone, int admin) {
        this.userID = userID;
        this.userName = userName;
        this.passWord = passWord;
        this.email = email;
        this.sex = sex;
        this.phone = phone;
        this.admin = admin;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userID=" + userID +
                ", userName='" + userName + '\'' +
                ", passWord='" + passWord + '\'' +
                ", email='" + email + '\'' +
                ", sex='" + sex + '\'' +
                ", phone='" + phone + '\'' +
                ", admin=" + admin +
                '}';
    }
}
