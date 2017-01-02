<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="p" uri="/WEB-INF/pageTag.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<base href="<%=basePath%>" />

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
  function tijiao(){
	alert("操作成功！");
	document.getElementById("form1").submit();
}
</script>
</head>
<body>
	<table width="100%" height="100%" border="0" cellspacing="0"
		cellpadding="3">
		<tr>
			<td style="height:25px; background-color:#f3f3f3; font-weight:bold"
				valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img
				src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;用户管理&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;用户预付款</td>
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
							width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>用户预付款</strong>
						</td>
						<td align="right" class="white" style="padding-right:20px"><a
							href="javascript:tijiao()" class="barBtn"><img
								src="images/5.png" align="absmiddle"> 导出excel</a> <a href="#"
							class="barBtn" onClick="javascript:history.go(-1);"><img
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
		<form action="user" method="post">
			<input type="hidden" name="method" value="selectPrePayment">
			<input type="hidden" name="userId" value="${userId }"/>
		<tr>
			<td
				style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;"><table
					width="100%" border="0" cellpadding="3" cellspacing="1"
					class="table1">
					<TR>
						<th width="10%" align="center">操作类型</th>
						<td width="20%" class="BGCgray"><select name="finaceType">
						<option value="">请选择</option>
								<c:forEach items="${requestScope.types }" var="types">
									<option <c:if test="${requestScope.finaceType==types }">selected</c:if>>${types }</option>
								</c:forEach>
						</select></td>
						<th>操作时间</th>
						<td><input type="text" name="startDate" value="${requestScope.startDate }" />至<input type="text" name="endDate" value="${requestScope.endDate }"/></td>
						<th width="10%" align="center"><BUTTON style="HEIGHT:25px"
								onClick="javascript:if (confirm('查询数据？')) location.href='#';else return;">
								<img src="images/btn_search.gif" width="16" height="16"
									align="absmiddle"> 查询
							</BUTTON>
						</th>
					</TR>
				</table>
			</td>
		</tr>
		</form>
		<tr>
			<td height="100%" valign="top">
				<div style="overflow:auto;height:100%; width:100%">
					<table width="100%" border="0" cellpadding="3" cellspacing="1"
						class="table1">
						<form action="user" method="post" id="form1">
						<input type="hidden" name="method" value="exportExcel"/>
						<TR>
							<th align="center">编号</th>
							<th align="center">财务类型</th>
							<th align="center">财务资金</th>
							<th align="center">账户余额</th>
							<th align="center">备注信息</th>
							<th align="center">明细时间</th>
						</TR>
						<c:forEach items="${preList }" var="p" begin="0" end="${page.pageSize }" step="1" varStatus="index">
							<TR>
							    <TD align="center">${index.index+1}</TD>
								<TD align="center">${p.finaceType }</TD>
								<TD align="center">${p.finacemoney }</TD>
								<TD align="center">${p.idbalance }</TD>
								<TD align="center">${p.remark }</TD>
								<TD align="center">${p.datetime }<input type="hidden" name="preids" value="${p.preid }"/></TD>
								
							</TR>
						</c:forEach>
						</form>
					</table>
					<p:page
						url="user?method=selectPrePayment&userId=${requestScope.userId }&finaceType=${requestScope.finaceType }&startDate=${requestScope.startDate }&endDate=${requestScope.endDate }&pageNow=" page="${requestScope.page }" />
					<tr>
						<!--  <table width="100%" border="0" cellspacing="0" cellpadding="0">
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