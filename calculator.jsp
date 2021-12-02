<%-- 
    Document   : calculator
    Created on : 2 Jun 2021, 1:27:58 pm
    Author     : HP
--%>

</html>
</html>
<head>
    <style>
            button {
                background-color: #BBC9C8;
                color: black;
                padding: 5px 20px;
                text-align: center;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                border-radius: 6px;
            }
        </style>
        </head>
         <body align="center">
        <p style="font-family:bold;"><font size="+4">Zakat Calculator</font>
        <p style="font-family:courier;"><mark style="background-color: #E4A86F">Total Zakat</mark></p>
<table border="2" width="20%" align="center">
    <tr bgcolor="#BDC1C0">
        <th><center>Total Zakat</center></th>
</tr>
<tr><td>
<body>
    <%
        int State = Integer.parseInt(request.getParameter("State"));
        int Person = Integer.parseInt(request.getParameter("Person"));
        int value = State * Person;
        out.println("The total of Zakat Fitrah : " + value);
    %>
</body>
</td></tr>
</table>

<p><center><button><a href="http://localhost/PayZakat/Main_Page.html">Exit</a></button>
<button><a href="http://localhost:8080/PayZakat/calculator.html">Back</a></button></center>
</body>
</html>