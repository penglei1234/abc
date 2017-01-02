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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;菜单管理&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;菜单添加</td>
		</tr>
		<tr>
			<td
				style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="20" height="34"><img src="images/main_headerL.gif"
							width="20" height="34">
						</td>
						<td style="color:#90c8e8;"><img src="images/icon_card.gif"
							width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>菜单添加</strong>
						</td>
						<td align="right" class="white" style="padding-right:20px"><a
							href="#" class="barBtn" onClick="javascript:history.go(-1);"><img
								src="images/btn_left.gif" align="absmiddle"> 后退</a> <a
							href="#" class="barBtn" onClick="javascript:history.go(+1);"><img
								src="images/btn_right.gif" align="absmiddle"> 前进</a> <a
							href="#" class="barBtn"><img src="images/btn_refresh.gif"
								align="absmiddle"> 刷新</a></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="100%" valign="top">
				<div style="overflow:auto;height:100%; width:100%">
					<form action="menu" method="post">
						<input type="hidden" name="method" value="insert" />
						<table width="100%" border="0" cellpadding="3" cellspacing="1"
							class="table1">
							<TR>
								<th width="20%" align="center">菜单名称</th>
								<TD class="BGCgray"><input type="text" name="menuName" />
								</TD>
							</TR>
							<TR>
								<th align="center">上级菜单</th>
								<TD width="80%" class="BGCgray"><select name="firstMenu">
										<option value="0" <c:if test="value=='0'">selected</c:if>>顶级菜单</option>
										<option value="1" <c:if test="value=='1'">selected</c:if>>系统设置</option>
								</select></TD>
							</TR>
							<TR>
								<th align="center">启用状态</th>
								<TD class="BGCgray"><input type="radio" name="menuState" value="1" <c:if test="${value=='1' }">checked</c:if>
									checked />启用 <input name="menuState" type="radio"  value="0" <c:if test="${value=='0' }">checked</c:if>/>禁用</TD>
							</TR>
							<TR>
								<th align="center">菜单路径</th>
								<TD class="BGCgray"><input type="text" name="menuUrl" /></TD>
							</TR>
							<TR>
								<th align="center"><span class="BGCgray">菜单简介</span>
								</th>
								<TD class="BGCgray"><textarea cols="40" rows="6" name="menuIntro"></textarea>
								</TD>
							</TR>
						</table>
						<div style="width:100%; text-align:center; padding:5px">
							<BUTTON style="HEIGHT:25px"
								onClick="javascript:if (confirm('保存信息？')) location.href='menu-list.jsp';else return;">
								<img src="images/btn_save.gif" width="16" height="16"
									align="absmiddle"> 保存
							</BUTTON>
							<BUTTON style="HEIGHT:25px" onClick="history.back()">
								<img src="images/btn_back.gif" width="16" height="16"
									align="absmiddle"> 返回
							</BUTTON>
						</div>
					</form>
				</div></td>
		</tr>
	</table>
</body>
</html>