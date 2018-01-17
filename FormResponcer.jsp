<%-- 
    Document   : FormResponcer
    Created on : Jan 13, 2018, 3:06:07 PM
    Author     : Addisu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%! String Fname=null,Lname=null,Email=null,Password=null
 ,country=null,InteIn[]=null;
 char Sex;%> 
<!DOCTYPE html>
<html>
   
    <head>
     
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          
        <%
Fname=request.getParameter("Fname"); 
Lname=request.getParameter("Lname");
Email=request.getParameter("email");
Password=request.getParameter("password");
country=request.getParameter("country");
Sex=(request.getParameter("sex")).charAt(0);
InteIn=request.getParameterValues("interest");
Cookie FnameC=new Cookie("FnameC",Fname);
FnameC.setMaxAge(60*60*24*365);
response.addCookie(FnameC);
Cookie LnameC=new Cookie("LnameC",Lname);
LnameC.setMaxAge(60*60*24*365);
response.addCookie(LnameC);
Cookie EmailC=new Cookie("EmailC",Email);
EmailC.setMaxAge(60*60*24*365);
response.addCookie(EmailC);
Cookie countryC=new Cookie("countryC",country);
countryC.setMaxAge(60*60*24*365);
response.addCookie(countryC);
        %>
    <center><h1>your information is as follow</h1></center>
    First Name name is :${param.Fname}<br/>
    Last Name is :${param.Lname}<br/>
    Email is :<%=Email%><br/>
    password is :<%=Password%><br/>
    country is :<%=country%><br/>
    Sex is :<%=Sex%><br/>
    interested in is :<%
    for(int i=0;i<InteIn.length;i++){
    out.println(InteIn[i]);
    }
    %><br/>
    </body>
</html>
