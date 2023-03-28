<% session = request.getSession(false);

	if (session==null)
	{
		response.sendRedirect("form2.jsp");
	}
	else if(session!=null)
	{
			String type = (String)session.getAttribute("type");
			if(!type.equals("1"))
			{
				response.sendRedirect("form2.jsp");
			}
	}

%>
<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*" %>
<html>
<head><title>Add</title></head>
<style>
    body{margin-top: 50px ;
        color: white;
        background-color: maroon;}
    h1{text-align: center;}
</style>
<body>
<% session=request.getSession(false); 
String type = (String)session.getAttribute("type");
if(type.equals("1"))
{
	String mname =request.getParameter("mname");
    String price =request.getParameter("price");

    if(mname.equals("") || mname.equals(" "))
        {
            response.sendRedirect("actions.jsp");
        }
    else if(price.equals("") || price.equals(" "))
        {
            response.sendRedirect("actions.jsp");
        }

    try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3307/project";
    Connection c =DriverManager.getConnection(url,"root","root");
    Statement st =c.createStatement();

    String query1 = "select mname from medicine where mname= '" +mname+"'";
    ResultSet rs1 = st.executeQuery( query1);

 if(rs1.next())
 {
    response.sendRedirect("pk1.jsp");
 }
else{


     String query="Insert into medicine(mname, price) values('" +mname+"' , '" +price+ "')";
   
     int rs = st.executeUpdate( query );
   
     if(rs>0)
     {
	%>
    <h1>Medicine added</h1>
    <%
	 }
     
     else
     {
    %>
    <h1>xxxx Error xxxx</h1>
    <%
    }

           st.close();
           c.close();
}
    }catch(Exception e){

      out.println(e);
    }
}
else
{
    %>
    <h1>xxxx Cannot Access xxxx</h1>
    <%
}
%>
</body>
</html>




