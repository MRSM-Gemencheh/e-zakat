<%-- 
    Document   : delete_PayZakat
    Created on : 6 Jun 2021, 5:16:24 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 


<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payzakat?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
        pst = con.prepareStatement("delete from login where id = ?");
        pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Record Deleted Successfully");
            
       </script>
       <html>
           <body class="w-75 p-3" background="PayZakat.png">
               <p style="font-family:bold;"><font size="+4">Delete System</font>

               <p style="font-family:courier;">Record Deleted Successfully</p>

               <div align="left">
               <p><a href="http://localhost:8080/PayZakat/table_PayZakat.jsp">Back</a></p>
            </body>
       </html>
