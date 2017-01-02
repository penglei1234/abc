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
<style>
	ul{
		list-style:none;
	}
</style>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;角色管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;角色添加</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>角色添加</strong></td>
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
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
        <TR>
          <th width="20%" align="center">角色名称</th>
          <TD class="BGCgray">管理员</TD>
          </TR>
        <TR>
        	<th align="center">启用状态</th>
          	<TD class="BGCgray">
            	<input type="radio" name="status" checked />启用<input name="status" type="radio" />禁用
            </TD>
        </TR>
        <TR>
          <th align="center"><span class="BGCgray">角色备注</span></th>
          <TD class="BGCgray">管理角色</TD>
        </TR>
		<TR>
          <th align="center"><span class="BGCgray">角色权限</span></th>
          <TD class="BGCgray">
			<ul>
				<li><input type="checkbox" />系统管理</li>
				<ul>
					<li><input type="checkbox"  />菜单管理</li>
					<li><input type="checkbox"  />角色管理</li>
					<li><input type="checkbox"  />用户管理</li>
					<li><input type="checkbox"  />财务管理</li>
					<li><input type="checkbox"  />关键词审核</li>
				</ul>
				<li><input type="checkbox" />门户管理</li>
				<ul>
					<li><input type="checkbox"  />门户管理</li>
				</ul>
				<li><input type="checkbox" />报表管理</li>
				<ul>
					<li><input type="checkbox"  />报表管理</li>
				</ul>
				<li><input type="checkbox" />代理商管理</li>
				<ul>
					<li><input type="checkbox"  />关键词申请</li>
					<li><input type="checkbox"  />代理商客户管理</li>
					<li><input type="checkbox"  />代理商预付款</li>
					<li><input type="checkbox"  />关键词申请管理</li>
					<li><input type="checkbox"  />操作日志</li>
				</ul>
				<li><input type="checkbox"  />系统配置管理</li>
				<ul>
					<li><input type="checkbox"  />财务类型</li>
					<li><input type="checkbox"  />服务类型</li>
					<li><input type="checkbox"  />服务年限</li>
					<li><input type="checkbox"  />app 地址</li>
					<li><input type="checkbox"  />客户类型</li>
					<li><input type="checkbox"  />证件类型</li>
					<li><input type="checkbox"  />优惠类型</li>
				</ul>
			</ul>
          </TD>
        </TR>
      </table>
      <div style="width:100%; text-align:center; padding:5px">
        <BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('保存信息？')) location.href='role-list.jsp';else return;"><img src="images/btn_save.gif" width="16" height="16" align="absmiddle"> 保存</BUTTON>
        <BUTTON style="HEIGHT:25px" onClick="history.back()"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
      </div>
    </div>
  </td>
  </tr>
</table>
</body>
</html>