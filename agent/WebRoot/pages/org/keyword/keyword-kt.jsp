<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<html>
<head>
	<base href="<%=basePath%>"	/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="images/arrow.gif" 

align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;&nbsp;&nbsp;代理商管理 <img 

src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;关键字申请</td>
  </tr>
   <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>开通【112】APP

</strong></td>
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
      <table align="center" width="100%" border="0" cellpadding="10" cellspacing="0" class="table1">
	<tr>
		<td>登录账号：</td>
		<td><input type = "text" name=""></td>
		<td>登录密码：</td>
		<td><input type = "password" name=""></td>
	</tr>
	<tr>
		<td>关键词：</td>
		<td>112</td>
		<td>企业名称：</td>
		<td>999999</td>
	</tr>
	<tr>
		<td>价格</td>
		<td>￥26000</td>
		<td>服务类型</td>
		<td>上传苹果商城</td>
	</tr>
       
         
          
 
        
      </table>
      <div style="width:100%; text-align:center; padding:5px">
        <BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('确认开通？')){alert('操作成功！');window.close();};"><img 

src="images/btn_save.gif" width="16" height="16" align="absmiddle">开通APP</BUTTON>
        
      </div>
    </div>
  </td>
  </tr>
</table>
</body>
</html>