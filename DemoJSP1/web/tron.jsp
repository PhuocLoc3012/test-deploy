<%-- 
    Document   : tron
    Created on : Dec 20, 2023, 12:50:20 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bai 1</h1>
        <form action="tinh" method="post">
            Enter radius: <input type="text" name="r"/></br><!-- comment -->
            <input type="submit" value="SUBMIT"/>
        </form>
        <% 
            if ( request.getAttribute("dt")!= null){
            //no gui di la object nen phai ep kieu la String gi?ng nhu khi gui di
            String s = (String)request.getAttribute("dt");
        %>
        <h2>Dien tich: <%= s%></h2>
        <%
        
        }
        
        %>
    </body>
</html>
