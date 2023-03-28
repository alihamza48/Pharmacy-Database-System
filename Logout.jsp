%@ page session="false" %>
<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*" %>
<html>
<head><title>Logout</title></head>
<body>
<% session=request.getSession(false); 
if(session!=null && !session.isNew())
{
 session.invalidate();
 response.sendRedirect("form2.jsp");
}
else if(session==null)
{
 response.sendRedirect("form2.jsp");
}
%>
</body>
</html>


