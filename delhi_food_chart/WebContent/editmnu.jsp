<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% ResultSet rs = (ResultSet)session.getAttribute("editmenu"); %>
  <form action="updateMenuServlet">
   <table>
      <tr>
         <td><input type="text" name="cid" value=<%=rs.getString(1)%>></td>
      
         <td><input type="text" name="in" value=<%=rs.getString(2) %>></td>
      
         <td><input type="text" name="des" value=<%=rs.getString(3) %>></td>
      
         <td><input type="text" name="price" value=<%=rs.getString(4)%>></td>
     </tr>
     <tr>
         <td><input type="submit" value="Update"/></td>
      </tr>
   </table>
   
  </form>
</body>
</html>