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
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="Images/mail_left_bg.gif">
                    <img src="Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="Images/content_bg.gif">
                        <tr><td height="31"><div class="title">角色授权</div></td></tr>
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
                        <!-- 角色信息开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%" align="center">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
											<br/>
											<font style="font-size:13pt; font-weight:700">角色信息</font>
											<br/><br/>
											<table width="90%" class="cont">
												<tr>
													<td width="2%">&nbsp;</td>
													<td width="10%">角色名称：</td>
													<td width="25%">管理员</td>
													<td width="10%"></td>
													<td width="25%">
														
													</td>
													<td></td>
													<td width="2%">&nbsp;</td>
												</tr>
												
												
												<tr>
													<td width="2%">&nbsp;</td>
													<td>赋菜单：</td>
													<td colspan="4">
													<table border="0" style="width:100%">
														<tr>
															<td style="width:30%; text-align:left; vertical-align:top">
																<input type="checkbox"/>用户管理<br/>
															     <br/>
															</td>
                                                         </tr>
														  <tr>
															<td style="width:35%; text-align:left; vertical-align:top">
																<input type="checkbox"/>运行管理<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>车辆运行记录<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>车辆维修记录<br/>
																<br/>
															</td>
															</tr>
															<tr>
															<td style="width:35%; text-align:left; vertical-align:top">
																<input type="checkbox"/>档案管理<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>自有车辆档案信息<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>租赁车辆档案信息<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>客户信息记录<br/>
																<br/>
															</td>
														</tr>
														<tr>
															<td style="width:30%; text-align:left; vertical-align:top">
																<input type="checkbox"/>数据管理<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>车管制度<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>操作流程<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>规范标准<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>车辆保险信息<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>法制文件<br/>
																<br/>
															</td>
                                                         </tr>
														 <tr>
															<td style="width:35%; text-align:left; vertical-align:top">
																<input type="checkbox"/>绩效管理<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>客户绩效考核<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>车管员绩效记录<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>车管员奖惩记录<br/>
																<br/>
															</td>
														</tr>
														<tr>
															<td style="width:35%; text-align:left; vertical-align:top">
																<input type="checkbox"/>系统角色管理<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>角色管理<br/>
																&nbsp;&nbsp;&nbsp;<input type="checkbox"/>权限管理<br/>
																
																<br/>
															</td>
														
															<td style="width:35%; text-align:left; vertical-align:top">
															
															</td>
															<td style="width:35%; text-align:left; vertical-align:top">
																
															</td>
														</tr>
													</table>
													</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td colspan="4" align="center">
														<input class="btn" onclick="location='list.html'" type="button" value="提交" />&nbsp;&nbsp;&nbsp;
														<input class="btn" onclick="location='list.html'" type="button" value="返回" />
													</td>
													<td></td>
													<td width="2%">&nbsp;</td>
												</tr>
											</table>
                                        </td>
                                    </tr>
								</table>
							</td>
						</tr>
						 <!-- 角色信息结束 -->
	
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