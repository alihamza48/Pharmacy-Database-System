<% session = request.getSession(false);
String type = (String)session.getAttribute("type");
	if (type==null)
	{
		response.sendRedirect("form2.jsp");
	}
	else if(type!=null)
	{

			if(!type.equals("2"))
			{
				response.sendRedirect("form2.jsp");
			}
	}

%>
<html>
<head>
    <title>User</title>

    <head>
        <script language="JavaScript" type="text/javaScript">

            function validate()
            {
            if(document.search.mname.value == "")
            {
                alert(" NO Medicine name");
                return false;
            }
            return true;
            }
            </script>
    </head>
    <style>
        body{
            background-color:maroon;
            color: white;
            margin-top: 20px;}
        h2{padding:20px;
            background-color:black;
            text-align: center;}
         div.container{
		text-align: center;
	    }
        .btn:hover{background-color: gray;
        border: 3px solid black;}
    input{
	margin: 2px;
	border: 2px solid black;}

    </style>
<body>
<div class="container">
    <u>
        <h2>User Page</h2>
    </u>

    <u>
        <h3>Search Medicine</h3>
    </u>
    <form name="search" action="Search.jsp" method="post" onsubmit="return validate()">
        Medicine Name: <input type="text" name="mname"><br><br>
        <input class="btn" type="submit" value="Search">

    </form>
    <br><br><br>

    <form name="logout" action="Logout.jsp" method="get">
        <input class="btn" type="submit" value="Log Out">
    </form>
</div>
</body>

</html>