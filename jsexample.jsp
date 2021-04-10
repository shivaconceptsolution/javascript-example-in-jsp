<%-- 
    Document   : jsexample
    Created on : Apr 10, 2021, 5:31:09 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function fun()
            {
                var s = document.getElementById("txtnum").value;
                alert("Name is "+s);
                
            }
            
            
        </script>
    </head>
    <body>
        <input type="text" id="txtnum" placeholder="Enter your name"  />
        <br>
        <input type="button" value="Click" name="btnsubmit" id="btn" onclick="fun()" />
    </body>
</html>
