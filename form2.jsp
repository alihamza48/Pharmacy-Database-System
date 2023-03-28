<html>

<head>
	<title>Log In</title>

	<head>

		<script language="JavaScript" type="text/javaScript">

function validation()
{
	
if(document.login.name.value == "")
{
	alert(" NO Username");
	return false;
}

if(document.login.pass.value == "")
{
	alert(" NO Password");
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
h1{padding:20px;
	background-color:black;
	text-align: center;}
	div.container{
		text-align: center;
	}
a{color: black;}
.btn:hover{background-color: gray;
border: 3px solid black;}

input{
	margin: 2px;
	border: 2px solid black;}
</style>
<body>

<div class="container">
	<u>
		<h1>Medications</h1>
	</u>

	<u>
		<h2>Log In</h2>
	</u>

	<form name="login" onsubmit="return validation()" action="login.jsp" method="post">

		Enter Username: &nbsp; <input type="text" name="name"><br>
		Enter Password: &nbsp;&nbsp; <input type="password" name="pass"><br><br>
		<input class="btn" type="submit" value="Log In">

	</form>

	<b><a href="http://localhost:8080/web-project1/form1.jsp"><u>Don't have an acount? Sign Up </u></a></b>
</div>

</body>

</html>