<%-- 
    Document   : Home_Jsp
    Created on : Jan 12, 2018, 4:11:13 PM
    Author     : Addisu
--%>
<%@page import="java.util.Scanner"%>

<%@page import="adisu.Functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!String Sname = "", Cname = "alemayehu";
    int Fnumber, Snumber;
    char c;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home_Jsp </title>
        <jsp:include page="Header.jsp"/>

    </head>
    <body>
        <%! String Fname=null,Lname=null,Email=null,country=null;%>
    <center><h1>form </h1></center>

        <form method="post" action="FormResponcer.jsp">
            <%
                Cookie[] newC=request.getCookies();
             if(newC!=null){
                 for(Cookie thisC: newC){
                 if("FnameC".equals(thisC.getName()))
                 Fname=thisC.getValue();
                 else if("LnameC".equals(thisC.getName()))
                 Lname=thisC.getValue();
                 else if("EmailC".equals(thisC.getName()))
                 Email=thisC.getValue();
                 }
             
             }
            %>
            <table>

                <tr><td>First Name  </td><td><input type="text" name="Fname" value="<%= Fname %>"><br/></td>  </tr>
                <tr><td>Last Name   </td><td><input type="text" name="Lname" value="<%= Lname %>"><br/></td></tr>
                <tr><td>Email       </td><td><input type="email" name="email" value="<%= Email %>"><br/></td></tr>
                <tr><td>password  </td><td><input type="password" name="password"><br/></td></tr>
                <tr><td>country</td><td><select name="country" >
                            <option>Ethiopia</option>
                            <option>Kenya</option>
                            <option>Somalia</option>
                            <option>USA</OPTION>
                            <OPTION>Sudan</OPTION>
                            <option>South Africa</option>
                        </select></td></tr>
                <tr><td>Sex</td><td><input type="radio" name="sex" value="male">male
                                    <input type="radio" name="sex" value="female">female</td></tr>
                <tr><td>interested in doing </td><td><input type="checkbox" name="interest" value="java">java
                                                     <input type="checkbox" name="interest" value="c++">c++
                                                     <input type="checkbox" name="interest" value="phytoon">phytoon</td></tr>
                <tr><td colspan="2"> <center><input type="Submit" value="submit"></center> </td></tr>
              
            </table>
        </form>
     <center><h1>jsp Scriptlet</h1></center>
        <%out.println("pleas enter the value to be added and hit enter");
            Scanner in = new Scanner(System.in);
            //Sname=in.next();
            Cname = Functions.name_Convert(Sname);
        %>
        <h2>after your name cnverted into all caps</h2>
        <%=Functions.name_Convert("adisu alemayehu")%><br/>
        <h2>the calculator returns</h2><%= Functions.calculator(22, '*', 33)%><br/>
    </body>
    <footer>
        <jsp:include page="footer.jsp"/>
    </footer>


</html>
