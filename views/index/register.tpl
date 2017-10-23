<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>注册</title>
	<link rel="stylesheet" type="text/css" href="{staticurl  action='style.css' type='css'}">
	<script type="text/javascript" src="{staticurl action='jquery-1.8.2.min.js' type='js'}"></script>
	<script type="text/javascript" src="{staticurl action='ways.js' type='js'}"></script>
	<meta  name="viewport"  content=" user-scalable=no, width=device-width,initial-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
</head>
<body style="background-color:#fff;">
	<div class="login">
		<div class="user_register">
			<span>用户注册</span>
		</div>
		<form action="register" id="myform" method="post">
		<div class="password  register">
			<ul>
				<li>
					<span>用户账号：</span>
					<input type="text" placeholder="请输入用户名" name="username" id="username" value="">
				</li>
				<li>
					<span>用户密码：</span>
					<input type="password" placeholder="请输入密码" name="password" id="password" value="">
				</li>
				<li>
					<span>确认密码：</span>
					<input type="password" placeholder=" " name="true_password" id="true_password" value="">
				</li>
			</ul>
			<div class="password_sub">
				<input type=button value="注册" onclick="return check()">
			</div> 
		</div>
		</form>
	</div>
		{literal}
<script type="text/javascript">	

function check() {
	var username = $('#username').val();
	var password = $('#password').val();
	var true_password = $('#true_password').val();
	if(username == "") {
		alert('请输入用户名');
		return false;
	}
	if(password == "") {
		alert('请输入密码');
		return false;
	}
	if(true_password == "") {
		alert('请输入确认密码');
		return false;
	}
	$.ajax({
		type: "POST",
		url: 'register',
		data: {username:username,password:password,true_password:true_password},
		datatype:'json',
		success: function(data) {
			var member = eval('('+data+')');
			if(member.status == 200) {
				alert(member.data);
				window.location.href='/index/index';
			} else {
				alert(member.data);
				return false;
			}
		}
	});


	
}


		
</script> 
{/literal}
</body>
</html>