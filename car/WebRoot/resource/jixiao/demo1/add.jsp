<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
	<base href="<%=basePath%>">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../../../Style/skin.css" />
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="../../../Images/mail_left_bg.gif">
                    <img src="../../../Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="../../../Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="./../../../Images/content_bg.gif">
                        <tr><td height="31"><div class="title">添加</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="../../../Images/mail_right_bg.gif"><img src="../../../Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="../../../Images/mail_left_bg.gif">&nbsp;</td>
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
                                            <form action="" method="">
                                                <table width="100%"class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="8%"><font color="red"><b>*</b></font>姓名：</td>
                                                        <td width="25%"><select><option>--必须是客户表中的姓名--</option><option>张三</option>
														<option>王武</option><option>李四</option></select></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td><font color="red"><b>*</b></font>责任心：</td>
                                                        <td>
														<select>
														  <option>A</option><option>B</option>
														  <option>C</option><option>D</option>
														</select>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td><font color="red"><b>*</b></font>素质心：</td>
                                                        <td>
                                                        	
														<select>
														  <option>A</option><option>B</option>
														  <option>C</option><option>D</option>
														</select>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td><font color="red"><b>*</b></font>顾客投诉：</td>
                                                        <td >
														<select>
														  <option>是</option><option>否</option>
														 
														</select>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
													 <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td><font color="red"><b>*</b></font>安全行程：</td>
                                                        <td >
														<select>
														  <option>A</option><option>B</option>
														  <option>C</option><option>D</option>
														</select>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
													
                                                   
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="2" align="center">
															<input class="btn" onclick="location='list.html'" type="button" value="提交" />&nbsp;&nbsp;&nbsp;
															<input class="btn" onclick="location='list.html'" type="button" value="返回" />
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


                <td background="../../../Images/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="../../../Images/mail_left_bg.gif">
                    <img src="../../../Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="../../../Images/buttom_bgs.gif">
                    <img src="../../../Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="../../../Images/mail_right_bg.gif">
                    <img src="../../../Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    </body>
</html>