/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author truon
 */
public class test2 {

    public static void main(String[] args) {
        String password = "abcd";
        String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
        System.out.println("Bcrypt hash: " + hash);
        boolean valuate = BCrypt.checkpw(password, hash);
        System.out.println(valuate);
    }
}
