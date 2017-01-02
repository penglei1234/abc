<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
﻿
<html>
<head>
<base href="<%=basePath%>" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
<script type="text/javascript">
	function search() {
		var cname =document.getElementById("textfield").value;
		if (cname.length > 0) {
			var request = new XMLHttpRequest();
			request.open("post", "keywordAdd", true);
			request.setRequestHeader("content-type",
					"application/x-www-form-urlencoded");
			request.send("method=search&cname=" + cname);
			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {
					var response = request.responseText;
					if (response != null && response != "") {
						var perpayment = JSON.parse(response);
						document.getElementById("balance").innerHTML = "<font color='red'>【当前账户余额：¥ "
								+ perpayment.balance + "】</font>";
						document.getElementById("cname").value = cname;

					} else {
						document.getElementById("balance").innerHTML = "<a href='pages/proxy/customer/customer-add.jsp'><font color='#0000FF'>客户不存在，点击添加客户</font></a>";
						document.getElementById("cname").value = "";
					}
				}
			};
		}
	}
	function apply() {
		var keywordName = document.getElementById("keywordName").value;
		var index = document.getElementById("keywordClass").selectedIndex;
		var keywordClassOptions = document.getElementsByName("keyclass");
		var keywordClass = keywordClassOptions.item(index).value;
		var keywordYear = document.getElementById("keywordYear").selectedIndex;
		var request = new XMLHttpRequest();
		request.open("post", "keywordAdd", true);
		request.setRequestHeader("content-type",
				"application/x-www-form-urlencoded");
		request.send("method=apply&cname=" + cname + "&keywordName="
				+ keywordName + "&keywordClass=" + keywordClass
				+ "&keywordYear=" + keywordYear);
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var money = request.responseText;
				if (money == null || money == "") {
					document.getElementById("keywordPrice").value = "";
					document.getElementById("font").innerHTML = "关键词已存在，请重新输入";
				} else {
					document.getElementById("font").innerHTML = "";
					if (keywordClass != "请选择" && keywordYear != 0
							&& keywordYear != 4) {
						var price = money * keywordYear;
						document.getElementById("keywordPrice").value = price;
					} else if (keywordClass != "请选择" && keywordYear == 4) {
						var price = money * 2;

						document.getElementById("keywordPrice").value = price;
					} else {

						document.getElementById("keywordPrice").value = "";
					}
				}
			}
		};
	}
	function save() {
		var cname = document.getElementById("cname").value;
		var keywordName = document.getElementById("keywordName").value;
		var index = document.getElementById("keywordClass").selectedIndex;
		var keywordClassOptions = document.getElementsByName("keyclass");
		var keywordClass = keywordClassOptions.item(index).value;
		var keywordYear = document.getElementById("keywordYear").selectedIndex;
		var keywordPrice = document.getElementById("keywordPrice").value;
		var request = new XMLHttpRequest();
		request.open("post", "keywordAdd", true);
		request.setRequestHeader("content-type",
				"application/x-www-form-urlencoded");
		request.send("method=save&cname=" + cname + "&keywordName="
				+ keywordName + "&keywordClass=" + keywordClass
				+ "&keywordYear=" + keywordYear + "&keywordPrice="
				+ keywordPrice);
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var response=request.responseText;
			if(response!=null&&response!=""){
				window.location.href=response;
				}
			}
		};
	}
</script>
</head>
<body>
	<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
		<tr>
			<font color="red"></font>
			<td style="height:25px; background-color:#f3f3f3; font-weight:bold"
				valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img
				src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp;
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;&nbsp;&nbsp;代理商管理
				<img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;关键字申请</td>
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
							width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>代理商客户管理

						</strong>
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
			<td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;">
			<table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
				<TR>
					<th width="10%" align="center">搜索客户：
					<td width="20%" class="BGCgray"><input type="text"
						name="textfield" id="textfield" onkeyup="search()"><font
						id="balance"></font>
						<div id="search" style="display:none"></div>
					</td>
					</th>
					<th width="10%" align="center"></th>
				</TR>
			</table>
			</td>
		</tr>
		<tr>
			<td height="100%" valign="top">
				<div style="overflow:auto;height:100%; width:100%">
					<table width="100%" border="0" cellpadding="3" cellspacing="1"
						class="table1">
						<TR>
							<th width="20%" align="center">客户名称</th>
							<TD class="BGCgray"><input type="text" id="cname"
								readonly="readonly" />
							</TD>
						</TR>
						<TR>
							<th width="20%" align="center">关键词</th>
							<TD class="BGCgray"><input type="text" id="keywordName"
								onkeyup="apply()" /><font id="font" color="red"></font>
							</TD>
						</TR>
						<TR>
							<th width="20%" align="center">服务类别</th>
							<TD class="BGCgray"><select id="keywordClass"
								onchange="apply()">
									<option selected value="请选择" name="keyclass">—请选择—</option>
									<option value="上传苹果商城" name="keyclass">上传苹果商城</option>
									<option value="不上传苹果商城" name="keyclass">不上传苹果商城</option>
							</select></TD>
						</TR>

						<TR>
							<th width="20%" align="center">服务年限</th>
							<TD class="BGCgray"><select id="keywordYear"
								onchange="apply()">
									<option selected value="请选择">—请选择—</option>
									<option value="1" name="yearclass">1</option>
									<option value="2" name="yearclass">2</option>
									<option value="3" name="yearclass">3</option>
									<option value="买二赠一" name="yearclass">买二赠一</option>
							</select></TD>
						</TR>

						<TR>
							<th align="center">价格</th>
							<TD width="80%" class="BGCgray"><input type="text"
								id="keywordPrice" readonly="readonly" />
							</TD>
						</TR>

					</table>
					<div style="width:100%; text-align:center; padding:5px">
						<BUTTON style="HEIGHT:25px" onClick="save()">
							<img src="images/btn_save.gif" width="16" height="16"
								align="absmiddle">提交信信息
						</BUTTON>

					</div>
				</div></td>
		</tr>
	</table>
</body>
</html>