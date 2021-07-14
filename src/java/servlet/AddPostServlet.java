/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import upload.EncFormResult;
import upload.uploadMethod;

/**
 *
 * @author Minky
 */
@WebServlet(name = "AddPostServlet", urlPatterns = {"/AddPostServlet"})
public class AddPostServlet extends HttpServlet {

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
        
        ServletContext servletContext = this.getServletConfig().getServletContext();
        EncFormResult efr = new uploadMethod().uploadImagine(request, servletContext, "images/Product-images");
        HashMap<String, List<String>> formFields = efr.getFormFields();
        List<String> fileList = efr.getFilePaths();
        
        String[] imgURLs = fileList.toArray(new String[fileList.size()]); 
        int accountID = ((Account)request.getSession().getAttribute("currentAccount")).getAccountID();
        if(accountID <= 0) {
            System.err.println("USERID ERROR, value: " + accountID);
            return;
        }
        String postTitle = formFields.get("title").get(0);
        Timestamp postDate = new Timestamp(new Date().getTime());
        String postDescription = formFields.get("decription").get(0);
        String thumbnailURL = imgURLs[0]; //for thumbnail
        List<String> cateList = formFields.get("category");
        String[] categories = {};
        if(!cateList.isEmpty()){
            categories = cateList.toArray(new String[cateList.size()]);
        }
        
        System.out.println("accountID: " + accountID + " postTitle: " + postTitle + " postDate: " + postDate + " postDescription: " + postDescription + " postLike: " + " thumbnailURL: " + thumbnailURL + "\n");
        System.out.println("categories:" + Arrays.toString(categories));
        
        DAO dao = new DAO();
        
        //update Post
        int postID = dao.insertPost(accountID, postTitle, postDate, postDescription, thumbnailURL);
        
        if(postID > 0){
            //update ProductImage
            dao.insertProductImage(postID, imgURLs);
            //update CategoryPost
            if(categories.length != 0) dao.insertCategoryPost(postID, categories);
        }
        
        response.sendRedirect("MyAccountServlet");
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
            Logger.getLogger(AddPostServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AddPostServlet.class.getName()).log(Level.SEVERE, null, ex);
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
