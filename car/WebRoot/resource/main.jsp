<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
	<base href="<%=basePath%>" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Style/skin.css" />
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
                        <tr><td height="31"><div class="title">欢迎界面</div></td></tr>
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
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <tr>
                            <!--左边内容-->
                            <td colspan="2" valign="top">
                                <h3 style="margin:0 0 10px 10px;">感谢您使用 友联车营 网站管理系统程序</h3>
                               
                                <p style="text-indent:20px;line-height:25px;margin-left:10px;font-size:15px;">欢迎访问 北京友联车辆管理运行管理中心平台，在这里您可以进行运营中心的人员信息以及车辆信息的管理。我的秉承最认真的态度，打造属于您的管理终端;您可以进行系统的多数据访问搜索服务；同系统的数据化管理方式完成人员信息的管理，档案信息的管理，车辆运行的管理以及数据的分布。快点开始您的数据管理吧 <span> <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=609307843&site=qq&menu=yes" onfocus="this.blur()"><br />&nbsp;&nbsp;&nbsp;&nbsp;此程序是您建立地区级商家信息门户的首选方案！</p>
                            </td>
                            <!--间隔-->
                            <td width="7%">&nbsp;</td>
                            <!--右边内容-->
                            <td width="40%" valign="top">
                                <table width="100%" height="150" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" height="27" background="Images/news_title_bg.gif">
                                            <img src="Images/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" background="Images/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                    <tr>
                                        <td height="100" valign="top" colspan="2" id="news">
                                            <marquee direction="up" scrollamount="2" vspace="30px" width="400px" height="100px" onmouseout="this.start()" onmouseover="this.stop()">
                                                <ul>
                                                    <li>友联车营管理系统！</li>
                                                    <li>专业管理企业网站！</li>
                                                    <li>友联车营管理系统！</li>
                                                    <li>专业管理企业网站！</li>
                                                    <li>友联车营管理系统！</li>
                                                </ul>
                                            </marquee>
                                        </td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr height="20"><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <!--第二行-->
                        <tr>
                            <td colspan="2" valign="top">
                                <table width="100%" height="230" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" background="Images/news_title_bg.gif">
                                            <img src="Images/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" background="Images/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr>
                                        <td height="186" valign="top" colspan="2"></td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td valign="top">
                                <table width="100%" height="230" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" background="Images/news_title_bg.gif">
                                            <img src="Images/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" height="27" background="Images/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr><td height="186" valign="top">&nbsp;</td><td height="102" valign="top"></td></tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                        </tr>
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
                                <img src="Images/icon_mail.gif" width="16" height="11" /> 客户服务邮箱：rainman@foxmail.com<br />
                                <img src="Images/icon_phone.gif" width="17" height="14" /> 官方网站：<a href="http://www.mycodes.net/" target="_blank">源码之家</a>
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="Images/mail_right_bg.gif" />&nbsp;</td>
            </tr>
         
        </table>
    </body>
</html>