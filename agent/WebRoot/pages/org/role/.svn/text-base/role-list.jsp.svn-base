<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="p" uri="/WEB-INF/pageTag.tld"%>
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
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;系统管理&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;角色管理</td>
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
							width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>角色管理</strong>
						</td>
						<td align="right" class="white" style="padding-right:20px"><a
							href="role-add.jsp" class="barBtn"><img src="images/5.png"
								align="absmiddle"> 新增</a> <a href="#" class="barBtn"
							onClick="javascript:history.go(-1);"><img
								src="images/btn_left.gif" align="absmiddle"> 后退</a> <a
							href="#" class="barBtn" onClick="javascript:history.go(+1);"><img
								src="images/btn_right.gif" align="absmiddle"> 前进</a> <a
							href="#" class="barBtn"><img src="images/btn_refresh.gif"
								align="absmiddle"> 刷新</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td
				style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;"><table
					width="100%" border="0" cellpadding="3" cellspacing="1"
					class="table1">
					<form action="role" method="post">
						<input type="hidden" name="method" value="selectAllRoleInfo" />
						<TR>
							<th width="10%" align="center">角色名称</th>
							<td width="20%" class="BGCgray"><input type="text"
								name="roleName" value="${requestScope.rolename }">
							</td>
							<th width="10%" align="center">角色状态</th>
							<td width="20%" class="BGCgray"><select name="roleState">
									<option value="">请选择</option>
									<option
										<c:if test="${requestScope.roleState=='启用'}">selected</c:if>>启用</option>
									<option
										<c:if test="${requestScope.roleState=='禁用'}">selected</c:if>>禁用</option>
							</select></td>
							<th width="10%" align="center"><BUTTON style="HEIGHT:25px"
									onClick="javascript:if (confirm('查询数据？')) location.href='#';else return;">
									<img src="images/btn_search.gif" width="16" height="16"
										align="absmiddle"> 查询
								</BUTTON>
							</th>
						</TR>
					</form>
				</table>
			</td>
		</tr>
		<tr>
			<td height="100%" valign="top">
				<div style="overflow:auto;height:100%; width:100%">
					<table width="100%" border="0" cellpadding="3" cellspacing="1"
						class="table1">
						<TR>
							<th align="center"><input type="checkbox" name="checkbox"
								id="checkbox">
							</th>
							<th align="center">角色名称</th>
							<th align="center">角色状态</th>
							<th align="center">角色备注</th>
							<th width="200px" align="center">操作</th>
						</TR>
						<c:forEach items="${requestScope.roleList }" var="role">
							<TR>
								<TD align="center"><input type="checkbox" name="checkbox2"
									id="checkbox2">
								</TD>
								<TD align="center">${role.roleName }</TD>
								<TD align="center">${role.roleState }</TD>
								<TD align="center">${role.roleRemark }</TD>
								<TD width="160" align="center"><BUTTON
										style="height:21px; font-size:12px"
										onClick="javascript:if (confirm('查看该菜单详情？')) location.href='role?method=selectRoleById&roleId=${role.roleId}';else return;">查看</BUTTON>
									<BUTTON style="height:21px; font-size:12px"
										onClick="javascript:if (confirm('编辑该菜单？')) location.href='role?method=update&roleId=${role.roleId}';else return;">编辑</BUTTON>
									<BUTTON style="height:21px; font-size:12px"
										onClick="javascript:if (confirm('编辑该菜单？')) location.href='role-grant.jsp';else return;">授权</BUTTON>
									<BUTTON style="height:21px; font-size:12px"
										onClick="javascript:if (confirm('删除该菜单？')) location.href='#';else return;">删除</BUTTON>
								</TD>
							</TR>
						</c:forEach>
					</table>
					<p:page
						url="role?method=selectAllRoleInfo&roleName=${requestScope.roleName }&roleState=${requestScope.roleState }&pageNow="
						page="${requestScope.page }" />
					<!--  
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20%" height="25"><table border="0" cellspacing="0" cellpadding="3">
            <tr>
              <td><a href="#"><img src="images/prev_top.gif" width="16" height="16" border="0" title="首页"></a></td>
              <td><a href="#"><img src="images/prev.gif" width="16" height="16" border="0" title="上一页"></a></td>
              <td><a href="#"><img src="images/next.gif" width="16" height="16" border="0" title="下一页"></a></td>
              <td><a href="#"><img src="images/prev_end.gif" width="16" height="16" border="0" title="尾页"></a></td>
            </tr>
          </table></td>
          <td width="20%" align="center"><table border="0" cellspacing="0" cellpadding="3">
            <tr>
              <td><a href="#"><img src="images/next.gif" width="16" height="16" border="0"></a></td>
              <td><input name="textfield23" type="text" size="3" style="width:25;height:18">
                /页</td>
            </tr>
          </table></td>
          <td width="20%" align="right">共10条记录显示到1/1</td>
        </tr>
      </table>
      -->
				</div></td>
		</tr>
	</table>
</body>
</html>