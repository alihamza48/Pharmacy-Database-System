<% session = request.getSession(false);

	if (session==null)
	{
		response.sendRedirect("form2.jsp");
	}
	else if(session!=null)
	{
			String type = (String)session.getAttribute("type");
			if(!type.equals("2"))
			{
				response.sendRedirect("form2.jsp");
			}
	}


%>
<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*" %>
<html>
<head><title>Search</title></head>
<style>
    body{margin-top: 50px ;
        color: white;
        background-color: maroon;
        text-align: center;}
    h1{text-align: center;}
</style>
<body>
<% session=request.getSession(false); 
String type = (String)session.getAttribute("type");
if(type.equals("2"))
{
	String mname =request.getParameter("mname");

	if(mname.equals("") || mname.equals(" "))
        {
            response.sendRedirect("user.jsp");          
        }

    try{
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3307/project";
        Connection c =DriverManager.getConnection(url,"root","root");
        Statement st =c.createStatement();
        String query="Select * from medicine where mname= '" + mname+"'";
   
     ResultSet rs = st.executeQuery( query );


   
     if(rs.next()){
	
        String price = rs.getString("price");
    %>
    <h1>Medicine found </h1><br>
    <h2>
        <%
        out.println(mname +"  Price = "+ price);
	%>
    </h2>
    <%  
    }
     
     else{
    %>
    	<h1>xxxx No such Medicine xxxx</h1>
        <%
          }

           st.close();
           c.close();

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
