<html>

<head>
	<title>Sign Up</title>

	<head>

		<script language="JavaScript" type="text/javaScript">

function validate()
{
	
if(document.signup.name.value == "" || document.signup.name.value == " ")
{
	alert(" NO Username");
	return false;
}

if(document.signup.pass.value == "" || document.signup.pass.value == " ")
{
	alert(" NO Password");
	return false;
}

if(document.signup.cpass.value == "" || document.signup.cpass.value == " ")
{
	alert(" Confirm Your Password");
	return false;
}

if(document.signup.cpass.value != document.signup.pass.value)
{
	alert(" Password and Confirm Password do not match");
	return false;
}

if(document.signup.type.value == "" || document.signup.type.value == " ")
{
	alert(" NO Type Selected");
	return false;
}

if(document.signup.type.value != "1" && document.signup.type.value != "2" )
{
	alert(" Enter Valid Type");
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
.btn:hover{background-color: gray;
border: 3px solid black;}
a{color: black;}
b{color:black;}
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
		<h2>Sign Up</h2>
	</u>
	<form name="signup" onsubmit="return validate()" action="Signup.jsp" method="POST">


		Enter Username: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name"><br>
		Enter Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass"><br>
		Confirm Password: <input type="password" name="cpass"><br><br>
		*Enter 1 for <b><u>Admin</u></b> and 2 for <b><u>User</u>*</b><br>
		<input type="text" name="type"><br><br>
		<input class="btn" type="submit" value="Sign Up">

	</form>
	<b><a href="http://localhost:8080/web-project1/form2.jsp"><u>Go To Login Page </u></a></b>
</div>
</body>

</html>