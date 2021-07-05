/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author truon
 */
public class Account {
    private int accountID;
    private String username;
    private String userPassword;
    private String userEmail;
    private String userFullname;
    private boolean isAdmin;
    private Date createDate;
    private String facebookURL;
    private String userImage;

    public Account() {
    }

    public Account(int accountID, String username, String userPassword, String userEmail, String userFullname, boolean isAdmin, Date createDate, String facebookURL, String userImage) {
        this.accountID = accountID;
        this.username = username;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userFullname = userFullname;
        this.isAdmin = isAdmin;
        this.createDate = createDate;
        this.facebookURL = facebookURL;
        this.userImage = userImage;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserFullname() {
        return userFullname;
    }

    public void setUserFullname(String userFullname) {
        this.userFullname = userFullname;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getFacebookURL() {
        return facebookURL;
    }

    public void setFacebookURL(String facebookURL) {
        this.facebookURL = facebookURL;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    @Override
    public String toString() {
        return "Account{" + "accountID=" + accountID + ", username=" + username + ", userPassword=" + userPassword + ", userEmail=" + userEmail + ", userFullname=" + userFullname + ", isAdmin=" + isAdmin + ", createDate=" + createDate + ", facebookURL=" + facebookURL + ", userImage=" + userImage + '}';
    }
    
    
}
