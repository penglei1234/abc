<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>"	/>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function change(){
		var password=document.getElementById("password");
		var oldpassword=document.getElementById("oldpassword");
		var newpassword=document.getElementById("newpassword");
		var confirmpassword=document.getElementById("confirmpassword");
		if(oldpassword.value==''){
			oldpassword.nextSibling.innerHTML="不能为空";
			return false;
		}
		if(password.value!=oldpassword.value){
			oldpassword.nextSibling.innerHTML="输入的与原密码不同";
			return false;
		}
		if(newpassword.value==''){
			oldpassword.nextSibling.innerHTML="";
			newpassword.nextSibling.innerHTML="不能为空";
			return false;
		}
		if(confirmpassword.value==''){
			oldpassword.nextSibling.innerHTML="";
			newpassword.nextSibling.innerHTML="";
			confirmpassword.nextSibling.innerHTML="不能为空";
			return false;
		}
		if(newpassword.value!=confirmpassword.value){
			oldpassword.nextSibling.innerHTML="";
			newpassword.nextSibling.innerHTML="";
			confirmpassword.nextSibling.innerHTML="两次输入的密码不同";
			return false;
		}
	} 
</script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;用户管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;修改密码</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>用户详情</strong></td>
          <td align="right" class="white" style="padding-right:20px">
          <a href="#" class="barBtn" onClick="javascript:history.go(-1);"><img src="images/btn_left.gif" align="absmiddle"> 后退</a>
          <a href="#" class="barBtn" onClick="javascript:history.go(+1);"><img src="images/btn_right.gif" align="absmiddle"> 前进</a>
          <a href="#" class="barBtn"><img src="images/btn_refresh.gif" align="absmiddle"> 刷新</a>
          </td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
   	<form action="user?method=changepassword" method="post" onsubmit="return change()">
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
        <TR>
          <th width="20%" align="center">原密码</th>
          <TD class="BGCgray"><input type="hidden" id="password" value="${sessionScope.user.userPassword }" /><input type="text" id="oldpassword" name="oldpassword" /><span></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">新密码</th>
          <TD class="BGCgray"><input type="password" id="newpassword" name="newpassword"/><span></span></TD>
        </TR>
        <TR>
          <th width="20%" align="center">确认密码</th>
          <TD class="BGCgray"><input type="password" id="confirmpassword" name="confirmpassword"/><span></span></TD>
        </TR> 
      </table>
      <div style="width:100%; text-align:center; padding:5px">
      <BUTTON style="HEIGHT:25px"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 修改</BUTTON>
      <BUTTON style="HEIGHT:25px" onClick="history.back()"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
      </div>
      </form>
    </div>
  </td>
  </tr>
</table>
</body>
</html>