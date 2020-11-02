<%-- 
    Document   : UpdateProductdata
    Created on : 2 Nov, 2020, 7:09:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Record</title>
    </head>
    <body>
         <center>                
        <form action="UpdateProductServlet">
        <table border="5" >            
            <tbody>
                 <tr>                    
                    <td>ID :</td>
                    <td><input type="text" name="pid" value="<%=request.getParameter("id")%>" read only /></td>
                    
                </tr>
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
                    <td colspan="2" align="center"><input type="submit" value="Update" /></td>
                </tr>
            </tbody>
        </table>                                                   
        </form>
    </body>
</html>
