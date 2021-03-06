/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Category;
import model.Post;
import model.postFullList;

/**
 *
 * @author acer
 */
@WebServlet(name = "sortPostServlet", urlPatterns = {"/sortPostServlet"})
public class sortPostServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        DAO dao = new DAO();
        List<Post> listPostByID = null;
        try {
            HttpSession session = request.getSession(false);
            if (session != null) {
                // Not created yet. Now do so yourself.
                Account currentAccount = (Account) session.getAttribute("currentAccount");
                listPostByID = dao.getPostByID(currentAccount.getAccountID());

            }
        }catch(Exception e){
            
        }
        List<postFullList> orderList = new ArrayList<>();
        String condition = request.getParameter("value");
        
        //get last post
        postFullList last = dao.getlastPost();
        
        //get all cate
        List<Category> listC = dao.getAllCategory();
        
        
        if (condition.endsWith("popularity")) {
            orderList = dao.getAllPostPopularity();
            
        } else if (condition.endsWith("AtoZ")) {
            orderList = dao.getAllPostAtoZ();
            
        } else if (condition.endsWith("ZtoA")) {
            orderList = dao.getAllPostZtoA();
        }
        int mostLike = dao.getMostLike();

        request.setAttribute("listPostByID", listPostByID);
        request.setAttribute("mostLike", mostLike);
        request.setAttribute("listP", orderList);
        request.setAttribute("listC", listC);
        request.setAttribute("last", last);
        request.getRequestDispatcher("allProduct.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(sortPostServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(sortPostServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
//public static void main(String[] args) throws Exception {
//        DAO dao = new DAO();
//        List<postFullList> orderList = new ArrayList<>();
//        String condition = "AtoZ";
//        if (condition.endsWith("popularity")) {
//            orderList = dao.getAllPostPopularity();
//        }else if (condition.endsWith("AtoZ")) {
//            orderList = dao.getAllPostAtoZ();
//            
//        } else if (condition.endsWith("ZtoA")) {
//            orderList = dao.getAllPostZtoA();
//        }
//        System.out.println(orderList);
//    }
}
