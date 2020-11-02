<%-- 
    Document   : PurchaseProduct
    Created on : 2 Nov, 2020, 7:27:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase Form</title>
    </head>
    <body>
       <center>                
        <form action="Invoice.jsp">
        <table border="5" >            
            <tbody>                 
                <tr>                    
                    <td>Enter Product Name :</td>
                    <td><input type="text" name="pname" value="<%=request.getParameter("name")%>" /></td>
                    
                </tr>
                <tr>
                    <td>Enter Product Description :</td>
                    <td><input type="text" name="pdesc" value="<%=request.getParameter("desc")%>" /></td>
                </tr>
                <tr>
                    <td>Enter Product Price :</td>
                    <td><input type="number" name="pprice" value="<%=request.getParameter("price")%>" /></td>
                </tr>
                <tr>
                    <td>Enter Product Quantity :</td>
                    <td><input type="number" name="qty" value="" /></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Buy Now" /></td>
                </tr>
            </tbody>
        </table>                                                   
        </form>
    </body>
</html>
