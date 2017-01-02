<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<base href="<%=basePath%>"	/>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商客户管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商客户添加</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>代理商客户添加</strong></td>
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
      <table  id="addTable" width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
		
		<TR>
          <th align="center" colspan="6">注册移动云端信息</th>
        </TR>
		<TR>
          <th align="center" colspan="1">客户信息</th>
		  <td class="BGCgray" colspan="2"><input type="text" readonly="readonly" value="${company.user.userRealName }"/></td>
		  <th align="center" colspan="1">登录密码</th>
		  <td class="BGCgray" colspan="2"><input type="text" readonly="readonly" value="${company.user.userPassword }"/></td>
        </TR>
		<TR>
          <th align="center" colspan="1">关键词</th>
		  <td class="BGCgray" colspan="2">${company.keyword.keywordName }</td>
		  <th align="center" colspan="1">登录地址</th>
		  <td class="BGCgray" colspan="2">${company.user.userUrl }</td>
        </TR>
		
		<TR>
          <th align="center" colspan="1">关键词开始日期</th>
		  <td class="BGCgray" colspan="2">${company.keyword.keywordNewdate }</td>
		  <th align="center" colspan="1">关键词结束日期</th>
		  <td class="BGCgray" colspan="2">${company.keyword.keywordDate  }</td>
        </TR>
		<TR>
          <th align="center" colspan="1">关键词有效期</th>
		  <td class="BGCgray" colspan="5">${company.keyword.keywordYears }</td>
        </TR>
		<TR>
          <th align="center" colspan="6">客户信息</th>
        </TR>
		<TR>
          <th align="left" colspan="6">基本信息</th>
        </TR>
        <TR>
          <th width="20%" align="center">企业名称</th>
          <TD class="BGCgray" colspan="5">${company.cname }</TD>
        </TR>
        <TR>
        	<th align="center">企业类型</th>
          	<TD class="BGCgray" colspan="5">
            	<select>
					<option>--请选择--</option>
					<option value="企业" <c:if test="${company.cstmTypeTb.cstmType=='企业' }">selected</c:if> >企业</option>
					<option value="政府" <c:if test="${company.cstmTypeTb.cstmType=='政府' }">selected</c:if> >政府</option>
					<option value="个人" <c:if test="${company.cstmTypeTb.cstmType=='个人' }">selected</c:if> >个人</option>
				</select>
            </TD>
        </TR>
		<TR>
          <th width="20%" align="center">状态</th>
          <TD class="BGCgray" colspan="5">
			<select readonly>
				<option <c:if test="${company.state=='1' }">selected</c:if> >启用</option>
				<option <c:if test="${company.state=='0' }">selected</c:if> >禁用</option>
			</select>
		  </TD>
        </TR>
		<TR>
          <th width="20%" align="center">企业主页</th>
          <TD class="BGCgray" colspan="5">${company.cweb }</TD>
        </TR>


		<TR>
          <th align="center" colspan="6">门户信息</th>
        </TR>
		
		
		<TR>
          <th width="20%" align="center">法人代表</th>
          <TD class="BGCgray" colspan="2">${company.lowyer }</TD>
		  <th width="20%" align="center">注册日期</th>
          <TD class="BGCgray" colspan="2">${company.regtime }</TD>
        </TR>
		<TR>
          <th width="20%" align="center">证件类型</th>
          <TD class="BGCgray" colspan="2">${licenseTb.licsType }</TD>
		  <th width="20%" align="center">证件号码</th>
          <TD class="BGCgray" colspan="2">${company.licensecard }</TD>
        </TR>
		<TR>
          <th width="20%" align="center">国家</th>
          <TD class="BGCgray" colspan="2">${company.country }</TD>
		  <th width="20%" align="center">省/地区</th>
          <TD class="BGCgray" colspan="2">${company.sheng }</TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司传真</th>
          <TD class="BGCgray" colspan="2">${company.fax }</TD>
		  <th width="20%" align="center">城市</th>
          <TD class="BGCgray" colspan="2">${company.shi }</TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司电话</th>
          <TD class="BGCgray" colspan="2">${company.phone }</TD>
		  <th width="20%" align="center">区</th>
          <TD class="BGCgray" colspan="2">${company.qu }</TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司地址</th>
          <TD class="BGCgray" colspan="5">${company.address }</TD>
        </TR>
		<TR>
          <th width="20%" align="center">备注</th>
          <TD class="BGCgray" colspan="5">
			<textarea cols="25" rows="6" readonly>${company.remark }</textarea>
		  </TD>
        </TR>
		<TR>
          <th width="20%" align="left" colspan="6"> <span style="color:blue;">联系人信息</span></th>
        </TR>
		<tr>
			<th>姓名</th><th>电话</th><th>传真</th><th>邮箱</th><th>职务</th><th></th>
		</tr>
		<c:forEach items="${company.lianXiRen }" var="p">
		
		<tr>
			<td>${p.lxname }</td><td>${p.phone }</td><td>${p.fax }</td><td>${p.email }</td><td>${p.department }</td><td></td>
		</tr>
		
		
		</c:forEach>
		<!-- <tr>
			<td>测试1</td><td>123</td><td>123</td><td>123</td><td>1</td><td></td>
		</tr>
		<tr>
			<td>测试1</td><td>123</td><td>123</td><td>123</td><td>1</td><td></td>
		</tr>
		<tr>
			<td>测试1</td><td>123</td><td>123</td><td>123</td><td>1</td><td></td>
		</tr> -->
		</table>
      <div style="width:100%; text-align:center; padding:5px">
        <BUTTON style="HEIGHT:25px" onClick="history.back()"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
      </div>
    </div>
  </td>
  </tr>
</table>
</body>
</html>