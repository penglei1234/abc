<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>" />

<title>成都市企业服务呼叫中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/main.js" type="text/javascript"></script>
<script type="text/javascript">
	function changeImage(img) {
		img.src = "image?id=" + Math.random();
	}
	function log() {
	
		var userLogName = document.getElementById("userLogName").value;
		var userPassword = document.getElementById("userPassword").value;
		var imageCode = document.getElementById("imageCode").value;
		document.getElementById("error").innerHTML="";
		if (userLogName.length > 20 || userLogName.length < 6) {
			document.getElementById("userFont").innerHTML = "请输入6-20位用户名";
		} else if (userPassword.length > 20 || userPassword.length < 6) {
			document.getElementById("passFont").innerHTML = "请输入6-20位密码";
			document.getElementById("userFont").innerHTML = "";
		} else if (imageCode.length != 4) {
			document.getElementById("imageFont").innerHTML = "请输入4位验证码";
			document.getElementById("passFont").innerHTML = "";
			document.getElementById("userFont").innerHTML = "";
		} else {
			document.getElementById("imageFont").innerHTML = "";
			document.getElementById("passFont").innerHTML = "";
			document.getElementById("userFont").innerHTML = "";
			var request = new XMLHttpRequest();
			request.open("post", "login", true);
			request.setRequestHeader("content-type",
					"application/x-www-form-urlencoded");
			request.send("userLogName=" + userLogName + "&userPassword="
					+ userPassword + "&imageCode=" + imageCode);
			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {
					var response = request.responseText;
					if (response.length > 0) {
						document.getElementById("error").innerHTML = response;
					} else {
						window.location.href = "main.jsp";
					}
				}
			};
		}
	}
	function reset() {
		document.getElementById("imageFont").innerHTML = "";
		document.getElementById("passFont").innerHTML = "";
		document.getElementById("userFont").innerHTML = "";
		document.getElementById("userLogName").value = "";
		document.getElementById("userPassword").value = "";
		document.getElementById("imageCode").value = "";
		changeImage(document.getElementById("imageCode"));
	}
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
	scroll="no">
	<table width="100%" height="100%" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td height="100%" align="center" bgcolor="#e3efff">
				<table width="762" height="435" border="0" cellpadding="0"
					cellspacing="0" background="images/loginBg.jpg">
					<tr>
						<td>
						<table border="0" align="center" cellpadding="0"
								cellspacing="7">
								<tr>
									<td>用户名：</td>
									<td><input id="userLogName" name="userLogName" value="aaaaaa" type="text"
										class="inputbox" style="width:160px;hight:20px"><font
										id="userFont" color="red"></font>
									</td>
								</tr>
								<tr>
									<td>密 码：</td>

									<td><input id="userPassword" name="userPassword" value="aaaaaa"
										type="password" class="inputbox" style="width:160px;hight:20px"><font
										id="passFont" color="red"></font>
									</td>
								</tr>
								<tr>
									<td>验证码：</td>
									<td><input id="imageCode" name="imageCode" type="text"
										class="inputbox" style="width:80px;hight:20px"><img
										src="image" onclick="changeImage(this)" />
									</td>
									<td><font id="imageFont" color="red"></font></td>
								</tr>
								<tr>
									<td></td>
									<td><font id="error" color="red"></font></td>
								</tr>
								<tr>
									<td height="100" colspan="2" valign="top"><table
											border="0" align="center" cellpadding="0" cellspacing="5">
											<tr>
												<td align="center">
												<BUTTON style="HEIGHT:25px"
														onClick="log()">
														<img src="images/login_enter.gif" width="16" height="16"
															align="absmiddle"> 登录
													</BUTTON>
												</td>
												<td align="center"><BUTTON style="HEIGHT:25px"
														onclick="reset()">
														<img src="images/login_cancel.gif" width="16" height="16"
															align="absmiddle"> 重置
													</BUTTON>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>