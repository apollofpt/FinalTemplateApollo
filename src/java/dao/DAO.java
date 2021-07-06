/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import helpers.DBUtils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Category;

/**
 *
 * @author truon
 */
public class DAO {
    private Connection con = null;
    private PreparedStatement stm = null;
    private ResultSet rs = null;
    public List<Account> getAllAccount(){
        List<Account> ls = new ArrayList<>();
        try {
            String query = "select * from Account";
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(query);
            rs = stm.executeQuery();
            while(rs.next()){
                //int accountID, String username, String userPassword, String userEmail,
                //String userFullname, boolean isAdmin, Date createDate, String facebookURL, String userImage
                ls.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)
                        , rs.getString(5), rs.getBoolean(6), rs.getDate(7), rs.getString(8), rs.getString(9)));
            }
        } catch (Exception e) {
            System.out.println("Error: "+e.toString());
        }
        return ls;
    } 
    
    public boolean insertAccount(String username, String email,String fullname, String password){
        try {
            con = DBUtils.makeConnection();
            if (con!= null) {
                String sql = "insert into "
                        + "Account(username,userPassword,userEmail,userFullname,isAdmin,createDate,facebookURL,userImage)"
                        + " values(?,?,?,?,0,?,'','')";
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                stm.setString(3, email);
                stm.setString(4, fullname);
                stm.setString(5, LocalDateTime.now().toString());
                int row = stm.executeUpdate();
                return row > 0;
            }
        } catch (Exception e) {
        }
        return false;
    }
    public List<Category> getAllCategory (){
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(query);
            rs = stm.executeQuery();
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public static void main(String[] args) {
//        String username = "trang";
//        String password = "banana";
//        DAO dao = new DAO();
//        List<Account> list = dao.getAllAccount();
//        Account find = new Account();
//        boolean flag = true;
//        for (int i = 0; i < list.size() && flag; i++) {
//            if(list.get(i).getUsername().trim().equals(username.trim()) && list.get(i).getUserPassword().trim().equals(password.trim())){
//                find.setUsername(list.get(i).getUsername());
//                find.setUserPassword(list.get(i).getUserPassword());
//                System.out.println("Da toi");
//                flag = false;
//            }
//        }
//        if(flag){
//            System.out.println("Co cai nit");           
//        }else{
//            System.out.println(find.toString());          
//        }
        DAO dao = new DAO();
        dao.insertAccount("HELLO", "TEST", "CHUOI", "132");
        List<Account> list = dao.getAllAccount();
        for (Account account : list) {
            System.out.println(account.toString());
        }
    }
    
}
