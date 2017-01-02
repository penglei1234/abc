<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="Js/prototype.lite.js" type="text/javascript"></script>
    <script src="Js/moo.fx.js" type="text/javascript"></script>
    <script src="Js/moo.fx.pack.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="Style/skin.css" />
    <script type="text/javascript">
        window.onload = function () {
            var contents = document.getElementsByClassName('content');
            var toggles = document.getElementsByClassName('type');

            var myAccordion = new fx.Accordion(
            toggles, contents, {opacity: true, duration: 400}
            );
            myAccordion.showThisHideOpen(contents[0]);
            for(var i=0; i<document .getElementsByTagName("a").length; i++){
                var dl_a = document.getElementsByTagName("a")[i];
                    dl_a.onfocus=function(){
                        this.blur();
                }
            }
        }
    </script>
</head>

<body>
    <table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
        <tr>
            <td width="182" valign="top">
                <div id="container">
                    <h1 class="type"><a href="javascript:void(0)">用户管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="Images/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                           <li><a href="UserServlet?type=select" target="main">用户管理</a></li>
                           <li><a href="resource/user/message.jsp" target="main">个人信息</a></li>
                           <li><a href="resource/user/ps.jsp" target="main">密码修改</a></li>
                        </ul>
                    </div>
                    <h1 class="type"><a href="javascript:void(0)">运行管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="Images/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="resource/yunxing/demo1/list.html" target="main">车辆运行记录</a></li>
                            <li><a href="resource/yunxing/demo2/list.html" target="main">车辆维修记录</a></li>
							
						
                        </ul>
                    </div>
                    <h1 class="type"><a href="javascript:void(0)">档案管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="Images/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="resource/dangan/demo1/list.jsp" target="main">自有车辆档案信息</a></li>
                            <li><a href="resource/dangan/demo2/list.jsp" target="main">租赁车辆档案信息</a></li>
                            <li><a href="resource/dangan/demo3/list.jsp" target="main">驾驶员信息记录</a></li>
                            
                        </ul>
                    </div>
                    <!-- *********** -->
                    <h1 class="type"><a href="javascript:void(0)">数据管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="Images/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="resource/data/demo1/list.jsp" target="main">车管制度</a></li>
                            <li><a href="resource/data/demo2/list.jsp" target="main">操作流程</a></li>
							<li><a href="resource/data/demo3/list.jsp" target="main">规范标准</a></li>
							<li><a href="resource/data/demo4/list.jsp" target="main">车辆保险信息</a></li>
							<li><a href="resource/data/demo5/list.jsp" target="main">法制文件</a></li>
							
                        </ul>
                    </div>
                    <h1 class="type"><a href="javascript:void(0)">绩效管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="Images/menu_top_line.gif" width="182" height="5" /></td>

                        </table>
                        <ul class="RM">
                            <li><a href="resource/jixiao/demo1/list.jsp" target="main">驾驶员绩效考核</a></li>
                            <li><a href="resource/jixiao/demo2/list.jsp" target="main">车管员绩效记录</a></li>
							
                            <li><a href="resource/jixiao/demo3/list.jsp" target="main">车管员奖惩记录</a></li>
							
                        </ul>
                    </div>
                    <!-- *********** -->
                    <h1 class="type"><a href="javascript:void(0)">系统角色管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="Images/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="RoleServlet?type=select" target="main">角色管理</a></li>
                            <li><a href="resource/system/demo2/list.jsp" target="main">权限管理</a></li>
                          
                        </ul>
                    </div>
                   
                </div>
            </td>
        </tr>
    </table>
</body>
</html>
