<%-- 
    Document   : index
    Created on : 9 de mai. de 2022, 20:09:34
    Author     : Fatec
--%>
<%@page import="model.Artist"%>
<%@page import="java.util.ArrayList"%>

<%
    Exception requestEx = null;
    ArrayList<Artist> list = new ArrayList<>();
    int count = 0;
    try{
        count = Artist.getCount();
        list = Artist.getList();
    }catch(Exception ex){
        requestEx = ex;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ìndice - artistas</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <h2>Artistas (<%= count%> Registros)</h2>
        
        <%if (requestEx !=null){%>
        <h2 style="color:red"><%= requestEx.getMessage() %></h2>
        <%}%>
        <table border="1">
            
            <tr><th>id</th><th>name</th></tr>
            <%for (Artist a: Artist.getList()){%>
            <tr>
                <td><%= a.getId() %></td>
                 <td><%= a.getName() %></td>
            </tr>
            <%}%>
        </table>
               
        
        
        
    </body>
</html>
