<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
	<base href="<%=basePath%>" />

    <title>友联车营 - 网站后台管理中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="瑞曼科技专业的网站后台管理系统" />
    <meta name="keywords" content="瑞曼,网站管理系统,企业网站" />
    <meta name="Author" content="RainMan" />
    <meta name="CopyRight" content="瑞曼科技" />
    <link rel="stylesheet" type="text/css" href="Style/skin.css" />
    <script type="text/javascript">
    	function change(obj){
    		//alert(new Date().toLocaleString());
    		obj.src="image?change="+new Date();
    	}
    </script>
</head>
    <body>
    
    
        <table width="100%">
            <!-- 顶部部分 -->
            <tr height="41"><td colspan="2" background="Images/login_top_bg.gif">&nbsp;</td></tr>
            <!-- 主体部分 -->
            <tr style="background:url(Images/login_bg.jpg) repeat-x;" height="532">
                <!-- 主体左部分 -->
                <td id="left_cont">
                    <table width="100%" height="100%">
                        <tr height="155"><td colspan="2">&nbsp;</td></tr>
                        <tr>
                            <td width="20%" rowspan="2">&nbsp;</td>
                            <td width="60%">
                                <table width="100%">
                                    <tr height="70"><td align="right"></td></tr>
                                    <tr height="274">
                                        <td valign="top" align="right">
                                            <ul>
                                                <li>1- 企业门户站建立的首选方案...</li>
                                                <li>2- 一站通式的整合方式，方便用户使用...</li>
                                                <li>3- 强大的后台系统，管理内容易如反掌...</li>
                                                
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                            <td width="15%" rowspan="2">&nbsp;</td>
                            </td>
                        </tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                    </table>
                </td>
                <!-- 主体右部分 -->
                <td id="right_cont">
                    <table height="100%">
                        <tr height="30%"><td colspan="3">&nbsp;</td></tr>
                        <tr>
                            <td width="30%" rowspan="5">&nbsp;</td>
                            <td valign="top" id="form">
                                <form action="LoginServlet" method="post">
                                    <table valign="top" width="50%">
                                        <tr><td colspan="2"><h4 style="letter-spacing:1px;font-size:16px;">友联车营 网站管理后台</h4></td></tr>
                                        <tr><td>帐号：</td><td><input type="text" name="username" value="<%
	                                        Cookie[] c=request.getCookies();
									    	if(c!=null){
									    		for(Cookie cookie:c){
									    			if("username".equals(cookie.getName())){
									    				out.print(cookie.getValue());
									    			}
									    		}
									    	}
    									 %>" /></td></tr>
                                        <tr><td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" name="password" value="" /></td></tr>
                                        <tr><td>验证码：</td><td><input type="text" name="checkcode" value="" style="width:80px;"/><img src="image" onclick="change(this)" /></td></tr>
                                        <tr  ><td align="center"><input type="checkbox" name="keep" value="iskeep" /></td><td align="left">记住我</td></tr>
										<tr class="bt" align="center" ><td colspan="2">&nbsp;<input type="submit" value="登录" />${requestScope.messageInfo }</td></tr>
                                    </table>
                                </form>
                            </td>
                            <td rowspan="5">&nbsp;</td>
                        </tr>
                        <tr><td colspan="3">&nbsp;</td></tr>
                    </table>
                    
                </td>
            </tr>
            <!-- 底部部分 -->
            <tr id="login_bot"><td colspan="2"><p>Copyright © 2011-2012 RainMan 网络工作室</p></td></tr>
        </table>
    </body>
</html>