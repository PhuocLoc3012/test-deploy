<%-- 
    Document   : login
    Created on : Dec 21, 2023, 12:19:25 PM
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
        <h1>Login form</h1>
        
        <%
            String u_init = getServletContext().getInitParameter("user");
            String p_init = getServletContext().getInitParameter("pass");
            if ( request.getParameter("user") != null && request.getParameter("pass") !=  null)
            {
                String u = request.getParameter("user");
                String p = request.getParameter("pass");
                if (u.equalsIgnoreCase(u_init) && p.equalsIgnoreCase(p_init)){
                    //nhap dung
        %>
        <!--chuyen sang trang khac va gui them tham so-->
        <jsp:forward page="welcome_1.jsp"> 
            <jsp:param name="name" value="<%= u%>"/> 
        </jsp:forward>    
        <%            
                }
                else{
                    //nhap sai
                    String er ="Nhap sai, vui long nhap lai";
        %>
        <h3 style="color: red"><%= er%></h3>
        <%
                }
            }    
        %>

        <form >
            Enter username: <input type="text" name="user"/> </br>
            Enter password: <input type="password" name="pass"/> </br>
            <input type="submit" value="LOGIN"/>
        </form>
    </body>
</html>
