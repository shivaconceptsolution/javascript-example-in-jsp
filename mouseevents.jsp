<%-- 
    Document   : mouseevents
    Created on : Apr 10, 2021, 6:00:13 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function changeColor1()
            {
              document.getElementById("btnsubmit").style.backgroundColor="green";  
            }
            
            function changeColor2()
            {
               document.getElementById("btnsubmit").style.backgroundColor="";    
            }
            
            
        </script>
    </head>
    <body>
        <input type="button" id="btnsubmit" value="Click" onmouseover="changeColor1()" onmouseout="changeColor2()" />
    </body>
</html>
