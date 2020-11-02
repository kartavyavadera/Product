<%-- 
    Document   : InsertProduct
    Created on : 2 Nov, 2020, 6:54:09 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserting Product</title>
    </head>
    <body>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "root", "");
            Statement st=cn.createStatement();
            
            String pname=request.getParameter("pname");
            String pdesc=request.getParameter("pdesc");
            String pprice=request.getParameter("pprice");           
            
            String qry="insert into tproduct(pname,pdesc,pprice) values('"+pname+"' , '"+pdesc+"' , "+pprice+")";
            int no=st.executeUpdate(qry);
            
            if(no>0)
            {
                RequestDispatcher disp=request.getRequestDispatcher("ViewAllProduct.jsp");
                disp.forward(request, response);
            }
            else
            {
                out.println("An error occured!!");
            }
        %>
        
    </body>
</html>
