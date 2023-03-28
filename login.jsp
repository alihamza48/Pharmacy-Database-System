
<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*" %>
<html>
<head><title>Log In</title></head>
<body>
<%	String name =request.getParameter("name");
    String pass =request.getParameter("pass");

    if(name.equals("") || name.equals(" "))
    {
      response.sendRedirect("form2.jsp");
    }
    else if(pass.equals("") || pass.equals(" "))
    {
      response.sendRedirect("form2.jsp");
    }

    try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3307/project";
    Connection c =DriverManager.getConnection(url,"root","root");
    Statement st =c.createStatement();
    String query="Select * from data where name='"+name+"' and pass =  '" + pass+ "'";
   
    ResultSet rs = st.executeQuery( query );
    
    if(rs.next()){

   String type = rs.getString("type");
           
   if(type.equals("1"))
   {
   session = request.getSession();
      session.setAttribute("type",type);
   response.sendRedirect("actions.jsp");
   }

   else if(type.equals("2"))
   {
        session = request.getSession();
       session.setAttribute("type",type);
       response.sendRedirect("user.jsp");
   }

     }
    
    else{
       response.sendRedirect("form2.jsp");
         }
          st.close();
          c.close();

   }catch(Exception e){

     out.println(e);
   }
%>
</body>
</html>





