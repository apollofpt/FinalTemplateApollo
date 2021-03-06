/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
import java.io.IOException;
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
import model.Exchange;
import model.Post;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/HomeServlet"})
public class HomeServlet extends HttpServlet {

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
        int mostLike = dao.getMostLike();

        List<Post> listLastestPostInHomePage = dao.getLatestPostInHomePage();
        List<Post> listTopLikePostInHomePage = dao.getTopLikePostInHomePage();
        List<Post> listAllPostInHomePage = dao.getAllPostInHomePage();
        List<Exchange> listAllExchangeInHomePage = dao.getAllExchangeInHomePage();
        List<Account> listAccount = dao.getAllAccount();
        List<Exchange> listAllExchangeStateEqualZeroByID = null;
         try {
            HttpSession session = request.getSession(false);
            if (session != null) {
                // Not created yet. Now do so yourself.
                Account currentAccount = (Account) session.getAttribute("currentAccount");
                listAllExchangeStateEqualZeroByID = dao.getAllExchangeStateEqualZeroByID(currentAccount.getAccountID());
//                listAllExchangeStateEqualZeroByID = dao.getAllExchangeStateEqualZeroByID(10);
            }
        }catch(Exception e){
            
        }
        
        request.setAttribute("listLastestPostInHomePage", listLastestPostInHomePage);
        request.setAttribute("listTopLikePostInHomePage", listTopLikePostInHomePage);
        request.setAttribute("listAllPostInHomePage", listAllPostInHomePage);
        request.setAttribute("listAllExchangeInHomePage", listAllExchangeInHomePage);
        System.out.println(listAllExchangeInHomePage);
        request.setAttribute("listAccount", listAccount);
        request.setAttribute("mostLike", mostLike);
        request.setAttribute("listAllExchangeStateEqualZeroByID", listAllExchangeStateEqualZeroByID);
        System.out.println(listAllExchangeStateEqualZeroByID);
        request.getRequestDispatcher("home.jsp").forward(request, response);
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
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
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

}
