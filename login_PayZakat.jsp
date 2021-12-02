<%-- 
    Document   : login_PayZakat
    Created on : 6 Jun 2021, 2:49:30 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% 

    if(request.getParameter("submit")!=null)
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payzakat?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
        pst = con.prepareStatement("insert into login(username,password)values(?,?)");
        pst.setString(1, username);
        pst.setString(2, password);
        pst.executeUpdate();         
%> 
        
    <script>   
        alert("Record Added Successfully");     
    </script> 
    <%             
    }
   %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body class="w-75 p-3" background="PayZakat.png">
        <p style="font-family:bold;"><font size="+4">Login System</font>
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" placeholder="Username" name="username" id="username" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Password</label>
                        <input type="text" class="form-control" placeholder="Password" name="password" id="password" required >
                     </div>
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="Submit" name="submit" class="btn btn-secondary">
                         <input type="reset" id="reset" value="Reset" name="reset" class="btn btn-secondary">
                         <p><a href="Main_Page.jsp">Exit</a>
                     </div>  
                         
                </form>
            </div>
        </div> 
     

    </body>
</html>