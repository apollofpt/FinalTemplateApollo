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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RegisterInsertErr;

/**
 *
 * @author truon
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
    private final String showInsertErr = "Register.jsp";
    private final String loginPage = "Login.jsp";
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
            throws ServletException, IOException , Exception{
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        System.out.println("Co vao RegisterServlet");
        PrintWriter out = response.getWriter();
        RegisterInsertErr errors = new RegisterInsertErr();
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String re_password = request.getParameter("re_password");
        String fullname = request.getParameter("fullname");
        String url = showInsertErr;
        try {
            boolean error = false;
            if(username.trim().length()<3 ||username.trim().length()>20 ){
                error = true;
                errors.setUsernameLengthErr("Username must be between 3-20 characters");
            }      
            if(password.trim().length()<3 ||password.trim().length()>20 ){
                error = true;
                errors.setPasswordLengthErr("Password must be between 3-20 characters");
            }else  if(!re_password.trim().equals(password.trim())){
                error = true;
                errors.setRe_passwordNoMatch("Password and confirm must match");
            }
            if(fullname.trim().length()<5||fullname.trim().length()>70 ){
                error = true;
                errors.setFullnameLengthErr("Fullname must be between 5-70 characters");
            }               
            if(email.trim().length()<1||email.trim().length()>50 ){
                error = true;
                errors.setEmailLengthErr("email must be between 1-50 characters");
            }                        
            if (error) {
                request.setAttribute("INSERTERR", errors);
                request.getRequestDispatcher(url).forward(request, response);
            } else{
                DAO dao = new DAO();
                boolean result = dao.insertAccount(username, email, fullname, password);
                if (result) {
                    url = loginPage;
                    System.out.println("URL: "+url);
                }
                response.sendRedirect("Login.jsp");
            }
            
        }catch(Exception ex){
            log("CreateAccountServlet_SQL "+ex.getMessage());
            errors.setUsernameIsExist(username+" da ton tai!!"+ex.getMessage());
            request.setAttribute("INSERTERR", errors);
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
