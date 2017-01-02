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
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
    <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;系统管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;菜单管理</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>菜单管理</strong></td>
          <td align="right" class="white" style="padding-right:20px"><a href="menu-add.jsp" class="barBtn""><img src="images/5.png" align="absmiddle"> 新增</a> <a href="#" class="barBtn" onClick="javascript:history.go(-1);"><img src="images/btn_left.gif" align="absmiddle"> 后退</a> <a href="#" class="barBtn" onClick="javascript:history.go(+1);"><img src="images/btn_right.gif" align="absmiddle"> 前进</a> <a href="#" class="barBtn"><img src="images/btn_refresh.gif" align="absmiddle"> 刷新</a></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;"><table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
      <TR>
        <th width="10%" align="center">菜单名称</th>
        <td width="20%" class="BGCgray"><input type="text" name="textfield" id="textfield"></td>
        <th width="10%" align="center"><BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('查询数据？')) location.href='#';else return;"><img src="images/btn_search.gif" width="16" height="16" align="absmiddle"> 查询</BUTTON></th>
        </TR>
    </table></td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
        <TR>
          <th align="center"><input type="checkbox" name="checkbox" id="checkbox"></th>
          <th align="center">菜单名称</th>
          <th align="center">上级菜单</th>
          <th align="center">菜单简介</th>
          <th align="center">菜单状态</th>
          <th width="160" align="center">操作</th>
        </TR>
        <TR>
          <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
          <TD align="center">门户管理</TD>
          <TD align="center">顶级菜单</TD>
          <TD align="center">管理系统权限</TD>
          <TD align="center">启用</TD>
          <TD width="160" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('查看该菜单详情？')) location.href='menu-info.jsp';else return;">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('编辑该菜单？')) location.href='menu-edit.jsp';else return;">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该菜单？')) location.href='#';else return;">删除</BUTTON></TD>
        </TR>
        <TR>
          <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
          <TD align="center">报表管理
          </TD>
          <TD align="center">顶级菜单</TD>
          <TD align="center">管理系统权限</TD>
          <TD align="center">启用</TD>
          <TD width="160" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('查看该菜单详情？')) location.href='menu-info.jsp';else return;">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('编辑该菜单？')) location.href='menu-edit.jsp';else return;">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该菜单？')) location.href='#';else return;">删除</BUTTON></TD>
        </TR>
        <TR>
          <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
          <TD align="center">系统设置</TD>
          <TD align="center">顶级菜单</TD>
          <TD align="center">管理系统权限</TD>
          <TD align="center">启用</TD>
          <TD width="160" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('查看该菜单详情？')) location.href='menu-info.jsp';else return;">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('编辑该菜单？')) location.href='menu-edit.jsp';else return;">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该菜单？')) location.href='#';else return;">删除</BUTTON></TD>
        </TR>
        <TR>
          <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
          <TD align="center">代销商设置</TD>
          <TD align="center">顶级菜单</TD>
          <TD align="center">管理系统权限</TD>
          <TD align="center">启用</TD>
          <TD width="160" align="center">
		  <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('查看该菜单详情？')) location.href='menu-info.jsp';else return;">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('编辑该菜单？')) location.href='menu-edit.jsp';else return;">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该菜单？')) location.href='#';else return;">删除</BUTTON>
		  </TD>
        </TR>
       	
      </table>
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
    </div>
  </td>
  </tr>
</table>
</body>
</html>