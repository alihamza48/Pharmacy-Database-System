<% session = request.getSession(false);

String type = (String)session.getAttribute("type");
	if (type==null)
	{
		response.sendRedirect("form2.jsp");
	}
	else if(type!=null)
	{

			if(!type.equals("1"))
			{
				response.sendRedirect("form2.jsp");
			}
	}


%>

<html>
<head>
	<title>Admin</title>
	<head>
		<script language="JavaScript" type="text/javaScript">

			function validate()
			{
			if(document.add.mname.value == "" || document.add.mname.value == " " )
			{
				alert(" NO Medicine name");
				return false;
			}
			
			if(document.add.price.value == "" || document.add.price.value == " ")
			{
				alert(" NO Price");
				return false;
			}
			return true;
			}

			function validate1()
			{
			if(document.delete.mname.value == "" || document.delete.mname.value == " ")
			{
				alert(" NO Medicine name");
				return false;
			}
			return true;
			}

			function validate2()
			{
			if(document.update.mname.value == "" || document.delete.mname.value == " ")
			{
				alert(" NO Medicine name");
				return false;
			}
			
			if(document.update.price.value == "" || document.update.price.value == " ")
			{
				alert(" NO Price");
				return false;
			}
			return true;
			}

			function validate3()
			{
			if(document.search.mname.value == "" || document.search.mname.value == " ")
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
div.one
{display:flex;
	text-align: center;
	justify-content: center;
	align-items: center;
}
div.add
{float:left;
	padding:20px;
}
div.del
{float:right;
	padding:20px;
}

div.two
{display:flex;
	text-align: center;
	justify-content: center;
	align-items: center;
}
div.update{float:left;
	padding:20px;}

div.search{float:right;
	padding:20px;}
.btn:hover{background-color: gray;
border: 3px solid black;}

input{
	margin: 2px;
	border: 2px solid black;}

.logout{text-align: center;}
	</style>

<body>
	<u>
		<h2>Admin Page</h2>
	</u>

<div class="container">
<div class="one">
	<div class="add">
	<u>
		<h3>Add Medicine</h3>
	</u>
	<form name="add" action="Add.jsp" method="post" onsubmit="return validate()">
		Medicine Name: &nbsp;&nbsp; <input type=" text" name="mname"><br>
		Medicine Price: &nbsp &nbsp <input type="number" name="price"><br><br>
		<input class="btn" type="submit" value="Add">
	</form>
	</div>
	
	<div class="del">
	<u>
		<h3>Delete Medicine</h3>
	</u>
	<form name="delete" action="Delete.jsp" method="post" onsubmit="return validate1()">
		Enter Medicine Name: <input type=" text" name="mname"><br><br>
		<input class="btn" type="submit" value="Delete">
	</form>
	</div>
</div>
<div class="two">
	<div class="update">
	<u>
		<h3>Update Medicine Price</h3>
	</u>
	<form name="update" action="Update.jsp" method="post" onsubmit="return validate2()">
		Medicine Name: &nbsp;&nbsp; <input type=" text" name="mname"><br>
		New Price: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  <input type="number" name="price"><br><br>
		<input class="btn" type="submit" value="Update">
	</form>
	</div>

	<div class="search">
		<u>
			<h3>Search Medicine</h3>
		</u>
		<form name="search" action="Search1.jsp" method="post" onsubmit="return validate3()">
			Medicine Name: <input type="text" name="mname"><br><br>
			<input class="btn" type="submit" value="Search">
	
		</form>
	</div>
</div>
	<br><br><br>
</div>
	<form class="logout" name="logout" action="Logout.jsp" method="get">
		<input class="btn" type="submit" value="Log Out">
	</form>
</body>

</html>