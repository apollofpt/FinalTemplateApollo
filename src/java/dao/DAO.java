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
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Category;
import model.Post;
import model.postFullList;

/**
 *
 * @author truon
 */
public class DAO {

    private Connection con = null;
    private PreparedStatement stm = null;
    private ResultSet rs = null;

    public List<Account> getAllAccount() {
        List<Account> ls = new ArrayList<>();
        try {
            String query = "select * from Account";
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(query);
            rs = stm.executeQuery();
            while (rs.next()) {
                //int accountID, String username, String userPassword, String userEmail,
                //String userFullname, boolean isAdmin, Date createDate, String facebookURL, String userImage
                ls.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getBoolean(6), rs.getDate(7), rs.getString(8), rs.getString(9)));
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.toString());
        }
        return ls;
    }
    
    public HashMap<String, String> getAllAccountUserPass() {
        HashMap<String, String> hm = new HashMap();
        try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement("select * from Account");
            rs = stm.executeQuery();
            while (rs.next()) {
                //int accountID, String username, String userPassword, String userEmail,
                //String userFullname, boolean isAdmin, Date createDate, String facebookURL, String userImage
                hm.put(rs.getString(2).trim()/*username*/,rs.getString(3).trim()/*password*/);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.toString());
        }
        return hm;
    }

    public boolean insertAccount(String username, String email, String fullname, String password) {
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
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

    public Account getAccountByUserName(String username) throws Exception {
        try {
            con = DBUtils.makeConnection();

            if (con != null) {
                String sql = "select * from [Account] where username = ?";

                stm = con.prepareStatement(sql);
                stm.setString(1, username);

                rs = stm.executeQuery();
                while (rs.next()) {
                    return new Account(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getBoolean(6),
                            rs.getDate(7),
                            rs.getString(8),
                            rs.getString(9));
                }
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return null;
    }

    public List<Post> getPostByID(int accountID) throws Exception {
        List<Post> listPostByID = new ArrayList<>();

        try {
            con = DBUtils.makeConnection();

            if (con != null) {
                String sql = "select * from Post where accountID = ?";

                stm = con.prepareStatement(sql);
                stm.setInt(1, accountID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    listPostByID.add(new Post(rs.getInt(1),
                            rs.getInt(2),
                            rs.getString(3),
                            rs.getDate(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getString(7)));
                }
                return listPostByID;
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return null;

    }

    public int getMostLike() throws Exception {
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "select top 1* from (\n"
                        + "select [postLike] from [dbo].[Post]) a\n"
                        + "order by  a.[postLike] desc";

                stm = con.prepareStatement(sql);

                rs = stm.executeQuery();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return 0;
    }
//slideshop

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(query);
            rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<postFullList> getAllPost() throws Exception {
        List<postFullList> list = new ArrayList<>();

        try {
            con = DBUtils.makeConnection();

            if (con != null) {
                String sql = "select * from [dbo].[Post] a, [dbo].[Account] b where a.accountID = b.accountID";

                stm = con.prepareStatement(sql);

                rs = stm.executeQuery();
                while (rs.next()) {
                    list.add(new postFullList(rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getString(7),
                            rs.getString(9),
                            rs.getString(16)));
                }
                return list;
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }

    public postFullList getlastPost() throws Exception {

        try {
            con = DBUtils.makeConnection();

            if (con != null) {
                String sql = "select * from [dbo].[Post] a, [dbo].[Account] b where a.accountID = b.accountID order by postID desc";

                stm = con.prepareStatement(sql);

                rs = stm.executeQuery();
                while (rs.next()) {
                    return(new postFullList(rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getString(7),
                            rs.getString(9),
                            rs.getString(16)));
                }
                return null;
            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }
/////////////////////////////////////////////////////////////
    public static void main(String[] args) throws Exception {
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
//        dao.insertAccount("HELLO", "TEST", "CHUOI", "132");
//        List<Account> list = dao.getAllAccount();
//        for (Account account : list) {
//            System.out.println(account.toString());
//        }
//        System.out.println(dao.getPostByID(1));
//            System.out.println(dao.getAccountByUserName("quang"));
//        System.out.println(dao.getMostLike());
//        System.out.println(dao.getAllCategory());
        System.out.println(dao.getlastPost());
    }

}
