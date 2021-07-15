/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.postFullList;

/**
 *
 * @author acer
 */
@WebServlet(name = "PostDetailServlet", urlPatterns = {"/PostDetailServlet"})
public class PostDetailServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String postid = request.getParameter("postid");
//        String catename = request.get
//        String sugest = request.getParameter("scid");
        DAO dao = new DAO();
        postFullList pid = dao.showPostDetail(postid);
        List<postFullList> detailCa = dao.showCategoryPostDetail(postid);
        String cname = detailCa.get(0).getCname();
//        List<postFullList> suggestBycid = dao.suggestPostSameCategory(postid);
        //get post by cateid
        List<postFullList> getCate = dao.suggestPostSameCategory(cname);

        request.setAttribute("postid", pid);
        request.setAttribute("listcate", detailCa);
//        request.setAttribute("scid", sugest);

        request.setAttribute("catePost", getCate);
        request.getRequestDispatcher("product-detail.jsp").forward(request, response);
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
        } catch (SQLException ex) {
            Logger.getLogger(PostDetailServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(PostDetailServlet.class.getName()).log(Level.SEVERE, null, ex);
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

    public static void main(String[] args) throws SQLException {
        DAO dao = new DAO();
//        List<postFullList> sugg = dao.suggestPostSameCategory("1");
//        for (postFullList p : sugg) {
//            System.out.println(p.toString());
//        }

//        List<postFullList> detailCa = dao.showCategoryPostDetail("1");
//        String cname = detailCa.get(0).getCname();
//        List<postFullList> suggestBycid = dao.suggestPostSameCategory(postid);
        //get post by cateid
        List<postFullList> getCate = dao.suggestPostSameCategory("s");
        System.out.println(getCate);
    }
}
