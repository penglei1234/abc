<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<base href="<%=basePath%>" />

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<table width="100%" height="100%" border="0" cellspacing="0"
		cellpadding="3">
		<tr>
			<td style="height:25px; background-color:#f3f3f3; font-weight:bold"
				valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img
				src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;用户管理&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;用户添加</td>
		</tr>
		<tr>
			<td
				style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="20" height="34"><img src="images/main_headerL.gif"
							width="20" height="34"></td>
						<td style="color:#90c8e8;"><img src="images/icon_card.gif"
							width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>用户添加</strong>
						</td>
						<td align="right" class="white" style="padding-right:20px"><a
							href="#" class="barBtn" onClick="javascript:history.go(-1);"><img
								src="images/btn_left.gif" align="absmiddle"> 后退</a> <a
							href="#" class="barBtn" onClick="javascript:history.go(+1);"><img
								src="images/btn_right.gif" align="absmiddle"> 前进</a> <a
							href="#" class="barBtn"><img src="images/btn_refresh.gif"
								align="absmiddle"> 刷新</a>
						</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="100%" valign="top">
				<div style="overflow:auto;height:100%; width:100%">
					<form action="user" method="post">
						<table width="100%" border="0" cellpadding="3" cellspacing="1"
							class="table1">
							<input type="hidden" name="method" value="insert" />
							<TR>
								<th width="20%" align="center">登录账号</th>
								<TD class="BGCgray"><input type="text" name="userLogName" />
								</TD>
							</TR>
							<TR>
								<th width="20%" align="center">登录密码</th>
								<TD class="BGCgray"><input type="password"
									name="userPassword" /></TD>
							</TR>
							<TR>
								<th width="20%" align="center">真实姓名</th>
								<TD class="BGCgray"><input type="text" name="userRealName" />
								</TD>
							</TR>
							<TR>
								<th align="center">身份证</th>
								<TD width="80%" class="BGCgray"><input type="text"
									name="userIdCard" /></TD>
							</TR>
							<TR>
								<th align="center">性别</th>
								<TD width="80%" class="BGCgray"><input type="text"
									name="userSex" /></TD>
							</TR>
							<TR>
								<th align="center">地址</th>
								<TD width="80%" class="BGCgray"><input type="text"
									name="userAddress" /></TD>
							</TR>
							<TR>
								<th align="center">邮箱</th>
								<TD width="80%" class="BGCgray"><input type="text"
									name="userEmail" /></TD>
							</TR>
							<TR>
								<th align="center">联系电话</th>
								<TD width="80%" class="BGCgray"><input type="text"
									name="userPhone" /></TD>
							</TR>
							<TR>
								<th align="center">启用状态</th>
								<TD class="BGCgray"><input type="radio" name="userState"
									value="1" <c:if test="value=='1'">checked</c:if> checked />启用
									<input type="radio" name="userState" value="0"
									<c:if test="value=='0'">checked</c:if> />禁用</TD>
							</TR>
							<TR>
								<th align="center"><span class="BGCgray">角色</span></th>
								<TD class="BGCgray"><select name="role">
										<option value="">--请选择--</option>
										<c:forEach items="${requestScope.role}" var="role">
										<option value="${role.roleName }">${role.roleName }</option>
										</c:forEach>
								</select>
								</TD>
							</TR>
						</table>
						<div style="width:100%; text-align:center; padding:5px">
							<BUTTON style="HEIGHT:25px"
								onClick="javascript:if (confirm('保存信息？')) location.href='user-list.jsp';else return;">
								<img src="images/btn_save.gif" width="16" height="16"
									align="absmiddle"> 保存
							</BUTTON>
							<BUTTON style="HEIGHT:25px" onClick="history.back()">
								<img src="images/btn_back.gif" width="16" height="16"
									align="absmiddle"> 返回
							</BUTTON>
						</div>
					</form>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>