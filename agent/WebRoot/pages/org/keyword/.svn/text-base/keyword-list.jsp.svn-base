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

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
<script type="text/javascript">
	function search() {
		var kname = document.getElementById("kname").value;
		var div = document.getElementById("div");
		div.innerHTML = "";
		var request = new XMLHttpRequest();
		request.open("post", "keywordList", true);
		request.setRequestHeader("content-type",
				"application/x-www-form-urlencoded");
		request.send("method=search&kname=" + kname);
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
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;系统管理&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;关键词审核</td>
		</tr>
		<tr>
			<td
				style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="20" height="34"><img src="images/main_headerL.gif"
							width="20" height="34"></td>
						<td style="color:#90c8e8;"><img src="images/icon_card.gif"
							width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>关键词审核</strong>
						</td>
						<td align="right" class="white" style="padding-right:20px"><a
							href="#" class="barBtn" onClick="javascript:history.go(-1);"><img
								src="images/btn_left.gif" align="absmiddle"> 后退</a> <a
							href="#" class="barBtn" onClick="javascript:history.go(+1);"><img
								src="images/btn_right.gif" align="absmiddle"> 前进</a> <a
							href="#" class="barBtn"><img src="images/btn_refresh.gif"
								align="absmiddle"> 刷新</a></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td
				style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;"><table
					width="100%" border="0" cellpadding="3" cellspacing="1"
					class="table1">
					<TR>
						<th width="10%" align="center">关键词</th>
						<td width="20%" class="BGCgray"><input type="text" id="kname"
							onblur="search()"></td>
						<th width="10%" align="center"><BUTTON style="HEIGHT:25px"
								onClick="">
								<img src="images/btn_search.gif" width="16" height="16"
									align="absmiddle"> 查询
							</BUTTON></th>
					</TR>
				</table></td>
		</tr>
		<tr>
			<td height="100%" valign="top">
				<div style="overflow:auto;height:100%; width:100%" id="div">
					<table width="100%" border="0" cellpadding="3" cellspacing="1"
						class="table1">
						<TR>
							<th align="center"><input type="checkbox" name="checkbox"
								id="checkbox"></th>
							<th align="center">序号</th>
							<th align="center">关键词</th>
							<th align="center">客户名称</th>
							<th align="center">代理商</th>
							<th align="center">申请年限</th>
							<th align="center">申请日期</th>
							<th align="center">到期日期</th>
							<th align="center">申请到期状态</th>
							<th align="center">审核状态</th>
							<th align="center">使用状态</th>
							<th width="160" align="center">操作</th>
						</TR>
						<TR>
							<TD align="center"><input type="checkbox" name="checkbox2"
								id="checkbox2"></TD>
							<TD align="center">1</TD>
							<TD align="center">112</TD>
							<TD align="center">999999</TD>
							<TD align="center">韩露</TD>
							<TD align="center">1</TD>
							<TD align="center">2013-05-12 12:03:06</TD>
							<TD align="center">2014-05-12 12:03:06</TD>
							<TD align="center">未过期</TD>
							<TD align="center">审核中</TD>
							<TD align="center">使用状态</TD>
							<TD width="160" align="center">
								<button>通过</button>
								<button>驳回</button>
							</TD>
						</TR>
						</span>
						<TR>
							<TD align="center"><input type="checkbox" name="checkbox2"
								id="checkbox2"></TD>
							<TD align="center">2</TD>
							<TD align="center">112</TD>
							<TD align="center">999999</TD>
							<TD align="center">韩露</TD>
							<TD align="center">1</TD>
							<TD align="center">2013-05-12 12:03:06</TD>
							<TD align="center">2014-05-12 12:03:06</TD>
							<TD align="center">未过期</TD>
							<TD align="center">审核中</TD>
							<TD align="center">使用状态</TD>
							<TD width="160" align="center">
								<button>通过</button>
								<button>驳回</button>
							</TD>
						</TR>
						<TR>
							<TD align="center"><input type="checkbox" name="checkbox2"
								id="checkbox2"></TD>
							<TD align="center">3</TD>
							<TD align="center">112</TD>
							<TD align="center">999999</TD>
							<TD align="center">韩露</TD>
							<TD align="center">1</TD>
							<TD align="center">2013-05-12 12:03:06</TD>
							<TD align="center">2014-05-12 12:03:06</TD>
							<TD align="center">未过期</TD>
							<TD align="center">审核中</TD>
							<TD align="center">使用状态</TD>
							<TD width="160" align="center">
								<button>通过</button>
								<button>驳回</button>
							</TD>
						</TR>
						<TR>
							<TD align="center"><input type="checkbox" name="checkbox2"
								id="checkbox2"></TD>
							<TD align="center">4</TD>
							<TD align="center">112</TD>
							<TD align="center">999999</TD>
							<TD align="center">韩露</TD>
							<TD align="center">1</TD>
							<TD align="center">2013-05-12 12:03:06</TD>
							<TD align="center">2014-05-12 12:03:06</TD>
							<TD align="center">未过期</TD>
							<TD align="center">审核中</TD>
							<TD align="center">使用状态</TD>
							<TD width="160" align="center">
								<button>通过</button>
								<button>驳回</button>
							</TD>
						</TR>

					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="20%" height="25"><table border="0"
									cellspacing="0" cellpadding="3">
									<tr>
										<td><a href="#"><img src="images/prev_top.gif"
												width="16" height="16" border="0" title="首页"> </a></td>
										<td><a href="#"><img src="images/prev.gif" width="16"
												height="16" border="0" title="上一页"> </a></td>
										<td><a href="#"><img src="images/next.gif" width="16"
												height="16" border="0" title="下一页"> </a></td>
										<td><a href="#"><img src="images/prev_end.gif"
												width="16" height="16" border="0" title="尾页"> </a></td>
									</tr>
								</table></td>
							<td width="20%" align="center"><table border="0"
									cellspacing="0" cellpadding="3">
									<tr>
										<td><a href="#"><img src="images/next.gif" width="16"
												height="16" border="0"> </a></td>
										<td><input name="textfield23" type="text" size="3"
											style="width:25;height:18"> /页</td>
									</tr>
								</table></td>
							<td width="20%" align="right">共10条记录显示到1/1</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>