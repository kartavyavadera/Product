<%-- 
    Document   : Invoice
    Created on : 2 Nov, 2020, 7:33:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>
    </head>    
    <body>
         <h1>Time to check out</h1>
        <h1>Confirm your details</h1>
    <center>
        <h2>
        <table border="5"  >
            
            <tbody>
                <tr>
                    <td>Product Name</td>
                    <td><%= request.getParameter("pname") %></td>
                </tr>
                <tr>
                    <td>Product Description</td>
                    <td><%= request.getParameter("pdesc") %></td>
                </tr>
                <tr>
                    <td>Product Price</td>
                    <td><%= request.getParameter("pprice") %> </td>
                </tr>
                <tr>
                     <% int tot= (Integer.parseInt(request.getParameter("pprice")) * Integer.parseInt(request.getParameter("qty"))); %>
                    <td>Total Amount </td>
                    <td><%= tot %></td>
                </tr>
                
            </tbody>
        </table> 
        </h2>
    </center>
    </body>
</html>
