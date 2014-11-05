<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<meta content=”yes” name=”apple-mobile-web-app-capable” />
<meta content=”black” name=”apple-mobile-web-app-status-bar-style” />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title>EWaiter</title>
<!-- demo scripts -->
<link href="resource/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="loginPage" style="border: 3px; width:100%; heigh:100%">
<div class="loginform cf">
	<form name="login" action="index_submit" method="get" accept-charset="utf-8">
	<div class='loginContact'>
		<ul>
			<li>电话号码</li>
			<li>
			<input type="telephone" name="telephone" placeholder="请输入您的手机号码" required>
			</li>
			<li><input type="submit" value="验证"> </li>
		</ul>
	</div>
	</form>
</div>

<div class="state" style="">
<p>隐私说明</p>
<p>本站对所有用户信息仅作数据分析，会对用户信息进行保密.....</p>
</div>
</div>
</body>

</html>
