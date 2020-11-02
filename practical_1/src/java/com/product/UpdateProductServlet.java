
package com.product;

import java.io.IOException;
import java.sql.*;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UpdateProductServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          try {
            Class.forName("com.mysql.jdbc.Driver");
            com.mysql.jdbc.Connection cn=(com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "root", "");
            Statement st=cn.createStatement();
            int id=Integer.parseInt(request.getParameter("pid"));
            String name=request.getParameter("pname");
            String desc=request.getParameter("pdesc");
            int price=Integer.parseInt(request.getParameter("pprice")); 
            
            String qry="update tproduct set pname='"+name+"' , pdesc='"+desc+"' , pprice="+price+" where pid="+id;
            int no=st.executeUpdate(qry);
            
            if(no>0)
            {
              response.sendRedirect("ViewAllProduct.jsp");
            }
        } catch (Exception ex) {
           out.println("An Error occured!!");
           
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
