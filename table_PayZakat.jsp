<%-- 
    Document   : table_PayZakat
    Created on : 8 Jun 2021, 1:26:48 pm
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<div class="col-sm-8">
    <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body class="w-75 p-3" background="PayZakat.png">
        <p style="font-family:bold;"><font size="+4">Update & Delete System</font>
        <div class="row">
            <div class="col-sm-8">
                <div class="panel-body">
                <form  method="POST" action="#" > 
                     <table class="table table-dark table-striped table-bordered"" width = "80%">
                             <tr>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                             
                             <%   

                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payzakat?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
                                
                                  String query = "select * from login";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
             
                             <tr>
                                 <td><%=rs.getString("username") %></td>
                                 <td><%=rs.getString("password") %></td>
                                 <td><a href="update_PayZakat.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="delete_PayZakat.jsp?id=<%=id%>">Delete</a></td>
                             </tr> 
                             
                             
                                <%
                                 
                                 }
                               %>
                             
                     </table> 
                               
        <p><a href="Main_Page.jsp">Exit</a>
                 </div>

            </div>  
     

    </body>
</html>