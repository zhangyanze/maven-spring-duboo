<#assign S_URL=request.contextPath />
<html>
<body>
<h2>登录界面</h2>
${P_EXCEPTION!""}
<form action="login.do" method="post">
用户名：<input type="text" name="username">
密码：<input type="password" name="password">
<input type="submit" value="提交">
</form>
</body>
</html>
