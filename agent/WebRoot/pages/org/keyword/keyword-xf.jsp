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
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>当前为【112】进行续费操作

</strong></td>
        </tr>
    </table></td>
  </tr>
  <tr>
	<td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;">
		<table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
 		</table>
	</td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
	
      <table align="center" width="100%" border="0" cellpadding="0" cellspacing="0" class="table1">
	<tr>
		<td  colspan="2">为112续费【当前账户余额：￥15758002.02】</td>
	</tr>
	<tr>
		<td>客户名称：</td>
		<td><input type = "text" name="" value="999999"></td>
	</tr>
	<tr>
		<td >关键词：</td><td><input type = "password" name="" value="112"></td>
	</tr>
	<tr>
		<td>服务类别：</td><td><select name="">
			<option value="上传苹果商城">上传苹果商城</option>
			<option value="不上传苹果商城">不上传苹果商城</option>
		</select></td>
	</tr>
	<tr>
		<td>服务年限：</td><td><select name="">
			<option value="--请选择--">--请选择--</option>
			<option value="1年">1年</option>
			<option value="2年">2年</option>
			<option value="3年">3年</option>
			<option value="4年">4年</option>
			<option value="5年">5年</option>
			<option value="6年">6年</option>
			<option value="7年">7年</option>
			<option value="8年">8年</option>
			<option value="9年">9年</option>
			<option value="10年">10年</option>
		</select></td>
	</tr>
	<tr>
		<td>价格</td>
		<td><input type = "text" name=""></td>
	</tr>
         
          
 
        
      </table>
      <div style="width:100%; text-align:center; padding:5px">
        <BUTTON style="HEIGHT:25px" onClick="javascript:if(confirm('确认续费？')){alert('操作成功！');window.close();};"><img 

src="images/btn_save.gif" width="16" height="16" align="absmiddle">续费提交</BUTTON>
        
      </div>
    </div>
  </td>
  </tr>
</table>
</body>
</html>