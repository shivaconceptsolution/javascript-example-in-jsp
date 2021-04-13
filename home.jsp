<%-- 
    Document   : home.jsp
    Created on : Apr 1, 2021, 5:39:35 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            *
            {
                margin:0px;
            }
            
            header{
                height:100px;
                background-color:orange;
                
            }
            header a{
                margin-left: 20px;
                font-size: 25px;
                font-weight: bolder;
                text-decoration: none;
                
            }
            section{
                height:500px;
                background-color:graytext;
            }
            
            input[type="text"],input[type="password"]
            {
                width:350px;
                height: 30px;
                border-radius: 10px;
            }
            
            input[type="submit"]
            {
                width:250px;
                height: 30px;
                border-radius: 10px;
                background-color: orange;
            }
            
            footer{
              height:100px;
                background-color:orange;  
            }
            
        </style>
        <script>
            function validate()
            {
               var staffid = document.getElementById("txtstaffid").value;
               var mobile = document.getElementById("txtmobile").value;
               var fname = document.getElementById("txtfname").value;
               var pass = document.getElementById("txtpass").value;
               if(staffid.length==0)
               {
                   alert('Enter Stafff ID First');
                   return false;
               }
               else if(mobile.length==0)
               {
                  alert('Enter Mobileno');
                   return false; 
               }
               else if(isNaN(mobile))
               {
                    alert('Mobile number should be numeric');
                   return false;
               }
               else if(mobile.length!=10)
               {
                    alert('Mobile number should be 10 digit');
                   return false; 
               }
               else if(fname.length==0)
               {
                   alert('Enter Fullname');
                   return false;
               }
               else if(!isNaN(fname))
               {
                   alert('Fullname should be alphabets');
                   return false;
               }
               else if(pass.length<5)
               {
                 alert('password should be above five char');
                 return false;  
               }
               
            }
            
        </script>
    </head>
    <body>
        <header>
            <h1>Welcome in header part</h1>
            <a href="home.jsp">Home</a><a href="contact.jsp">Contact</a>
        </header>
        <section>
            <div style="margin-left: 300px;padding-top: 50px;">
           <h1>EMP SIGN UP FORM</h1> 
           
           <form action="RegSer" method="post">
               <input type="text" name="txtstaffid" id="txtstaffid" placeholder="Enter Staff ID" required="" />
               <br><br>
               <input type="text" name="txtmobile" id="txtmobile" placeholder="Enter Staff Mobile" required="" />
               <br><br>
               <input type="text" name="txtfname" id="txtfname" placeholder="Enter Staff Fullname" required=""/>
               <br><br>
               <input type="password" name="txtpass" id="txtpass" placeholder="Enter Staff Password" required=""/>
               
               <br><br>
               <input type="submit" name="btnsubmit" value="SIGN UP" onclick="return validate()" />
               
           </form>
           
           <%
               
            if(request.getParameter("q")!=null)
            {
                out.print(request.getParameter("q"));
            }
               
            %>
            
            <a href="login.jsp" style="color:black;color:white;">Login Here</a>
            </div>
        </section>
        <footer>
            <h1>Welcome in footer part</h1>
        </footer>
    </body>
</html>
