<%-- 
    Document   : home
    Created on : Dec 19, 2023, 11:35:29 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2 style="color: red">
        <%
            String name="Vu Thi Teo";
            out.println("Hello " + name + "!");
            out.println("<br> PI=" + Math.PI);
            double r = 2;
            DecimalFormat f = new DecimalFormat("##.##");
        %>  
        <h2 style="color: blueviolet">
        <!--bieu thuc-->
            Dien tich la: <%= f.format(Math.PI*r*r) %>
        </h2>
        
        <h1>Bai 1</h1>
        <form>
            Enter radius: <input type="text" name="r"/></br><!-- comment -->
            <input type="submit" value="SUBMIT"/>
        </form>
        
        
        <%
            if (request.getParameter("r") != null){
                String r_raw = request.getParameter("r");
                double ra;
                try{
                    ra = Double.parseDouble(r_raw);
                    double s = ra * ra * Math.PI;
                    
        %>
        <h2>Dien tich la: <%= f.format(s)%></h2>
        <% 
            }catch(Exception e){
                    System.out.print(e);
            }
            }
            

        %>
            
    </body>
</html>
