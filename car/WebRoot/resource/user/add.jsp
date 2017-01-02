<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
	<base href="<%=basePath%>">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Style/skin.css" />
	<script src="Js/checkNull.js" type="text/javascript"></script>
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="Images/mail_left_bg.gif">
                    <img src="Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="Images/content_bg.gif">
                        <tr><td height="31"><div class="title">用户添加</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="Images/mail_right_bg.gif"><img src="Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="Images/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4"></td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 角色修改开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="UserServlet" method="post" onsubmit="return checkNull()">
                                                <table width="100%"class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="8%"><font color="red"><b>*</b></font>姓名：</td>
                                                        <td width="25%"><input id="username" name="username" class="text" placeholder="必填" /><span></span>${messageInfo }</td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
													<tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="8%"><font color="red"><b>*</b></font>帐号：</td>
                                                        <td width="25%"><input id="username" name="username" class="text" placeholder="必填,唯一验证" /><span></span></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
													<tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="8%"><font color="red"><b>*</b></font>密码：</td>
                                                        <td width="25%"><input type="password" id="password" name="password" class="text" placeholder="必填" /><span></span></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td><font color="red"><b>*</b></font>性别：</td>
                                                        <td><input type="radio" name="sex" value="0" />男<input type="radio" id="sex" name="sex" value="1" />女<span></span></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td><font color="red"><b>*</b></font>年龄：</td>
                                                        <td>
                                                        	<input id="age" name="age" class="text"  /><span></span>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td><font color="red"><b>*</b></font>身份证号：</td>
                                                        <td >
                                                        	<input id="idcard" name="idcard" class="text" placeholder="正则表达式验证" /><span></span>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>电话：</td>
                                                        <td><input id="tel" name="tel" class="text" placeholder="正则表达式验证" /><span></span></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
													 <tr>
                                                        <td>&nbsp;</td>
                                                        <td>地址：</td>
                                                        <td><input id="address" name="address" class="text"  /><span></span></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
													 <tr>
                                                        <td>&nbsp;</td>
                                                        <td>入职时间：</td>
                                                        <td><input id="intime" name="intime" class="text"  /><span></span></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
													 <tr>
                                                        <td>&nbsp;</td>
                                                        <td>离职时间：</td>
                                                        <td><input id="outtime" name="outtime" class="text"  /><span></span></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
													 <tr>
                                                        <td>&nbsp;</td>
                                                        <td>状态：</td>
                                                        <td><select name="state" style="width:55px">
                                                            	<option value="0">禁用</option>
                                                                <option value="1">启用</option>
                                                            </select></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="2" align="center">
                                                        	<input type="hidden" name="type" value="add" />
															<input class="btn" type="submit" value="提交" />&nbsp;&nbsp;&nbsp;
															<input class="btn" onclick="location='UserServlet?type=select'" type="button" value="返回" />
														</td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 角色添加结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt">
                                
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>


                <td background="Images/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="Images/mail_left_bg.gif">
                    <img src="Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="Images/buttom_bgs.gif">
                    <img src="Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="Images/mail_right_bg.gif">
                    <img src="Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    </body>
</html>