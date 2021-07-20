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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author truon
 */
@WebServlet(name = "ConfirmUpdatePostAdminServlet", urlPatterns = {"/confirmUpdatePostAdmin"})
public class ConfirmUpdatePostAdminServlet extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("idPost");
        String title = request.getParameter("title");
        String[] temp = request.getParameterValues("category");

        String decription = request.getParameter("decription");
        DAO dao = new DAO();
        ArrayList<String> category = new ArrayList<>();
        
        for (String string : temp) {
            category.add(string);
        }
        ArrayList<String> listC = dao.getCategoryByPostID(id);
//            System.out.println("Truoc khi xoa");
//
//        for (String string : listC) {
//            System.out.println("Listc: "+string);
//        }
//        for (String string : category) {
//            System.out.println("List nhap : "+string);
//        }
        for (int i = 0; i < listC.size(); i++) {
            for (int j = 0; j < category.size(); j++) {
                if (listC.get(i).trim().equals(category.get(j).trim())) {
                    category.remove(j);
                    listC.remove(i);
//                    i--;
                    j--;
                }                
            }
        }
//        System.out.println("SAu khi xoa");
//        for (String string : listC) {
//            System.out.println("Listc: "+string);
//        }
//        for (String string : category) {
//            System.out.println("List nhap : "+string);
//        }
//        
        try {
            dao.insertCategoryPost(Integer.parseInt(id), category);
        } catch (Exception ex) {
            Logger.getLogger(ConfirmUpdatePostAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
            //Hoan thanh insert cai chua co
        
        dao.deleteCategoryByPost(id, listC);
            
        try {
            dao.updatePost(id, title, decription);
            response.sendRedirect("managerPost");
        } catch (Exception ex) {
            Logger.getLogger(ConfirmUpdatePostAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
