<%-- 
    Document   : ViewAllProduct
    Created on : 2 Nov, 2020, 6:57:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Products</title>
    </head>
    <body>
      <center>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "root", "");
            Statement st=cn.createStatement();
            String qry="select * from tproduct";
            ResultSet rs=st.executeQuery(qry);
            

            
        %>
       
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>                  
                     <th>Update Record</th>
                      <th>Delete Record</th>
                      <th>Purchase Product</th>
                      
                </tr>
            </thead>
            <tbody>
               <% 
                while(rs.next())
                {
                    int id=rs.getInt(1);
                    String name=rs.getString(2);
                    String desc=rs.getString(3);
                    int price=rs.getInt(4);                                                                                      
               %>
               
               <tr>
                   <td><%=id%></td>
                    <td><%=name%></td>
                     <td><%=desc%></td>
                      <td><%=price%></td>    
                      <td><a href="UpdateProductdata.jsp?id=<%=id%>&name=<%=name%>&desc=<%=desc%>&price=<%=price%>">Update</a></td>
                   <td><a href="DeleteProductServlet?id=<%=id%>">Delete</a></td>
                     <td><a href="PurchaseProduct.jsp?id=<%=id%>&name=<%=name%>&desc=<%=desc%>&price=<%=price%>">Purchase</a></td>
               </tr>
               
               <%   
                    }
               %>
            </tbody>
        </table>
            <br>
            <br>
            <form action="index.jsp">
                <input type="submit" value="Home"/>
            </form>
      </center>
    </body>
</html>
