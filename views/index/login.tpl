<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>全部单品</title>
	<link rel="stylesheet" type="text/css" href="{staticurl  action='style.css' type='css'}">
	<script type="text/javascript" src="{staticurl action='jquery-1.8.2.min.js' type='js'}"></script>
	<script type="text/javascript" src="{staticurl action='ways.js' type='js'}"></script>
	<meta  name="viewport"  content=" user-scalable=no, width=device-width,initial-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
</head>
<body style="background-color:#fff;">
<form  action="/user/account/login" id="myform" method="post" onsubmit="return check()">
	<div class="login">
		<img src="{staticurl action='logo1.png' type='img'}">
		<div class="password">
			<ul>
				<li>
					<span>账号</span>
					<input type="text" placeholder="请输入帐号" name="username" id="username" value="">
				</li>
				<li>
					<span>密码</span>
					<input type="password" placeholder="请输入登录密码" name="password" id="password" value="">
				</li>
			</ul>
			<div class="password_sub">
				<input type="submit" value="登陆">
			</div>
			<div class="password_login">
				<a href="/index/goRegister">新账号注册</a>
			</div>
		</div>
	</div>
	</form>
		{literal}
<script type="text/javascript">	

function check() {
	var username = $('#username').val();
	var password = $('#password').val();
	if(username == "") {
		alert('请输入用户名');
		return false;
	}
	if(password == "") {
		alert('请输入密码');
		return false;
	}
	return ture;
}


		
</script> 
{/literal}
</body>
</html>