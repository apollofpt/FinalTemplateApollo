/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author truon
 */
public class RegisterInsertErr {
    private String usernameLengthErr;
    private String passwordLengthErr;
    private String emailLengthErr;
    private String re_passwordNoMatch;
    private String fullnameLengthErr;
    private String usernameIsExist;   

    public RegisterInsertErr() {
    }

    public RegisterInsertErr(String usernameLengthErr, String passwordLengthErr, String emailLengthErr, String re_passwordNoMatch, String fullnameLengthErr, String usernameIsExist) {
        this.usernameLengthErr = usernameLengthErr;
        this.passwordLengthErr = passwordLengthErr;
        this.emailLengthErr = emailLengthErr;
        this.re_passwordNoMatch = re_passwordNoMatch;
        this.fullnameLengthErr = fullnameLengthErr;
        this.usernameIsExist = usernameIsExist;
    }

    public String getUsernameLengthErr() {
        return usernameLengthErr;
    }

    public void setUsernameLengthErr(String usernameLengthErr) {
        this.usernameLengthErr = usernameLengthErr;
    }

    public String getPasswordLengthErr() {
        return passwordLengthErr;
    }

    public void setPasswordLengthErr(String passwordLengthErr) {
        this.passwordLengthErr = passwordLengthErr;
    }

    public String getRe_passwordNoMatch() {
        return re_passwordNoMatch;
    }

    public void setRe_passwordNoMatch(String re_passwordNoMatch) {
        this.re_passwordNoMatch = re_passwordNoMatch;
    }

    public String getFullnameLengthErr() {
        return fullnameLengthErr;
    }

    public void setFullnameLengthErr(String fullnameLengthErr) {
        this.fullnameLengthErr = fullnameLengthErr;
    }

    public String getUsernameIsExist() {
        return usernameIsExist;
    }

    public void setUsernameIsExist(String usernameIsExist) {
        this.usernameIsExist = usernameIsExist;
    }

    public String getEmailLengthErr() {
        return emailLengthErr;
    }

    public void setEmailLengthErr(String emailLengthErr) {
        this.emailLengthErr = emailLengthErr;
    }
    
}
