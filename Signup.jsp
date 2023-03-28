<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*" %>
<html>
<head><title>Sign Up</title></head>
<body>
<%	String name =request.getParameter("name");
    String pass =request.getParameter("pass");
    String cpass =request.getParameter("cpass");
    String type = request.getParameter("type");

    if(name.equals("") || name.equals(" "))
    {
       response.sendRedirect("form1.jsp");
    }
    else if(pass.equals("") || pass.equals(" "))
    {
        response.sendRedirect("form1.jsp");
    }
    else if(type.equals("") || type.equals(" "))
    {
        response.sendRedirect("form1.jsp");
    }
    else if(!(type.equals("1") || type.equals("2")))
    {
        response.sendRedirect("form1.jsp");
    }
    else if(cpass.equals("") || cpass.equals(" "))
    {
        response.sendRedirect("form1.jsp");
    }
    

try{
        Class.forName("com.mysql.jdbc.Driver");
        String url= "jdbc:mysql://localhost:3307/project"; 
        Connection c= DriverManager.getConnection(url,"root","root");
        Statement st= c.createStatement();
    
        String query1 = "select name from data where name= '" +name+"'";
        ResultSet rs1 = st.executeQuery( query1);

     if(rs1.next())
     {
        response.sendRedirect("pk.jsp");
     }
else{

    String query = "insert into data(name,pass,type) values ('"+name+"' , '"+ pass + "' , " + type+ ")";
    
    int rs = st.executeUpdate(query);
    
    if (rs>0)
    {
        response.sendRedirect("form2.jsp");
    }
    else{
        response.sendRedirect("form1.jsp");
    }
    
    c.close();
    
    }  
    }//try
    
    catch(Exception e)
    {
    out.println(e);
    }
%>
</body>
</html>          
