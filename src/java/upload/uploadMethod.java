/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Minky
 */
@WebServlet(name = "uploadMethod", urlPatterns = {"/uploadMethod"})
public class uploadMethod extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param servletContext
     * @param destinationPath
     * @param path
     * @param response servlet response
     * @return 
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public EncFormResult uploadImagine(HttpServletRequest request, ServletContext servletContext, String destinationPath)
            throws ServletException, IOException {
        System.out.println("destination path: " + destinationPath);
        try{
            List<FileItem> items = parseRequest(request, servletContext);
            
            // Process the uploaded items
            Iterator<FileItem> iter = items.iterator();
            List<String> fileNames = new ArrayList();
            HashMap<String, List<String>> formField = new HashMap();
            while (iter.hasNext()) { //If the ItemList is a FormField, not a file
                FileItem item = iter.next();
                if(item.isFormField()){
                    String itemFieldName = item.getFieldName();
                    String itemValue = item.getString();
                    System.out.println(itemFieldName + ": " + itemValue);
                    if(!formField.containsKey(itemFieldName)){
                        formField.put(itemFieldName, new ArrayList());
                    }
                    formField.get(itemFieldName).add(itemValue);
                } else { 
                    String filename = item.getName();
                    System.out.println("filename: " + filename);
                    
                    if(filename == null || filename.equals("")){
                        break;
                    } else {
                        String[] filenameSlipts = filename.split("\\.");
                        
                        System.out.println(Arrays.toString(filenameSlipts));
                        
                        String type = filenameSlipts[filenameSlipts.length-1];
                        
                        filename = request.getSession().getAttribute("USER") + "-" + new SimpleDateFormat("ddMMyyyy-hhmmssSSS").format(new Date()) + "." + type; //change filename
                        System.out.println("changed filename: " + filename);
                        
                        Path path = Paths.get(filename);
                        String storePath = servletContext.getRealPath(destinationPath);
                        System.out.println("storePath:" + storePath);
                        String uploadFilePath = storePath + "/" + path;
                        File uploadFile = new File(uploadFilePath);
                        
                        item.write(uploadFile);
                        
                        fileNames.add(destinationPath + "/" + filename);
                        
                        System.out.println("fielPath:" + uploadFilePath);
                    }
                }
            }
            System.out.println("fileNames: " + fileNames);
            return new EncFormResult(formField, fileNames);
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    
    public List<FileItem> parseRequest(HttpServletRequest request, ServletContext servletContext)
                throws ServletException, IOException{
                    /* TODO output your page here. You may use following sample code. */
       
            try{
                    // Create a factory for disk-based file items
                DiskFileItemFactory factory = new DiskFileItemFactory();

                // Configure a repository (to ensure a secure temp location is used)
                //            ServletContext servletContext = this.getServletConfig().getServletContext(); as parameter in argument
                File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
                factory.setRepository(repository);

                // Create a new file upload handler
                ServletFileUpload upload = new ServletFileUpload(factory);

                // Parse the request
                return upload.parseRequest(request);
            } catch(Exception e){
                e.printStackTrace();
                return null;
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
