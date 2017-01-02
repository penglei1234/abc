<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="p" uri="/WEB-INF/fenye.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
	<base href="<%=basePath%>" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="Style/skin.css" />

  <script>
     function del(){
	   confirm("确认删除");
	 }
	 function selectAll(obj){
		var hobbys=document.getElementsByTagName("input");
		//alert(obj.value);
		if(obj.value=='全选'){
			for(var i=0;i<hobbys.length;i++){
				hobbys.item(i).checked='checked';
			}	
		}
		if(obj.value=="反选"){
			
			for(var i=0;i<hobbys.length;i++){
				if(hobbys.item(i).name=='tuser'){
					hobbys.item(i).checked=false;
				}else{
					hobbys.item(i).checked=!hobbys.item(i).checked;
				}	
			}	
		}
	}
	function isselAll(){
		var hobbys=document.getElementsByTagName("input");
		var isselAll=true;
		
		for(var i=0;i<hobbys.length;i++){
			if(hobbys.item(i).name=="user"){
				isselAll&=hobbys.item(i).checked;
			}
		}
		if(isselAll){
			document.getElementById("tuser").checked=true;
		}else{
			document.getElementById("tuser").checked=false;
		}
	}
	function batchDelete(){
		var users=document.getElementsByName("user");
		var b=false;
		for(var i=0;i<users.length;i++){
			b|=users[i].checked;
		}
		if(!b){
			alert("至少要选择一条数据");
			return false;
		}
		document.getElementById("form1").action="UserServlet?type=batchdelete";
		document.getElementById("form1").submit();
	}
	function exportExcel(){
		var users=document.getElementsByName("user");
		var b=false;
		for(var i=0;i<users.length;i++){
			b|=users[i].checked;
		}
		if(!b){
			alert("至少要选择一条数据");
			return false;
		}
		document.getElementById("form1").action="UserServlet?type=export";
		document.getElementById("form1").submit();
	}
  </script>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <tr><td height="31"><div class="title">用户管理</div></td></tr>
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
                    <table style="width:100%" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
						<tr>
							<td colspan="4">
								<form class="clearfix" action="UserServlet" method="post">
									<div style="float:left">
										<p style="float:left; margin-left:30px;"><label>姓名：</label><input name="username" value="${requestScope.user.username }" class="text" list="rolelist" style="width:80px;"/></p>&nbsp;&nbsp;&nbsp;
										<p style="float:left; margin-left:30px;"><label>电话：</label>
											<input name="tel" value="${requestScope.user.tel }" class="text" list="rolelist" style="width:80px;"/></p>&nbsp;&nbsp;&nbsp;
											
										</p>&nbsp;&nbsp;&nbsp;
										<input type="hidden" name="type" value="select" />
										<p style="float:left; margin-left:30px;"><input type="submit" class="btn" value="查询"/></p>
									</div>
									<div style="float:right">
										<input type="button" onclick='window.location="resource/user/add.jsp"' class="btn" value="添加"/> &nbsp;&nbsp;&nbsp;
										
										<input type="button" class="btn" value="批量删除" onclick="return batchDelete()"/>	
									</div>
								</form>
								<datalist id="rolelist">
									<option></option>
									<option></option>
									
								</datalist>
							<td>
						</tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 列表展示开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form id="form1" method="post">
                                            	<input type="hidden" name="type" value="batchdelete" />
                                                <table width="100%"  class="cont tr_color">
                                                    <tr>
                                                        <th> <input type="checkbox" id="tuser" name="tuser" /></th>
                                                        <th>工号</th>
                                                        <th>姓名</th>
                                                        <th>性别</th>
                                                        <th>年龄</th>
                                                        <th>身份证号</th>
                                                        <th>电话</th>
                                                        <th>地址</th>
														<th>入职时间</th>
														<th>离职时间</th>
														<th>状态</th>
														<th>操作</th>
                                                    </tr>                                                  
                                                   		<c:forEach items="${users }" var="u">
                                                   			<tr align="center" class="d">
                                                   			<td><input type="checkbox" name="user" value="${u.id }" onclick="isselAll()" /></td>
															<td>${u.id }</td>
	                                                        <td><a href="UserServlet?type=selectById&id=${u.id }">${u.username }</a></td>
	                                                        <td>${u.sex }</td>
															<td>${u.age }</td>
															<td>${u.idcard }</td>
															<td>${u.tel }</td>
															<td>${u.address }</td>
	                                                        <td>${u.intime }</td>
															<td>${u.outtime }</td>
	                                                        <td>
	                                                        <c:if test="${u.state=='0' }">禁用</c:if>
	                                                        <c:if test="${u.state=='1' }">启用</c:if>
	                                                        </td>
	                                                        <td><a href="UserServlet?type=preupdate&id=${u.id }">修改</a>&nbsp;&nbsp;
                                                            <a href="UserServlet?type=deleteById&id=${u.id }" onclick="del()">删除</a></td>
                                                   			</tr>
                                                   		</c:forEach>                                             
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!--列表展示结束 -->
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
                           		<input type="button" onclick="selectAll(this)" value="全选" />&nbsp;&nbsp;&nbsp;
                                <input type="button" onclick="selectAll(this)" value="反选" />&nbsp;&nbsp;&nbsp;
								<input type="button" value="导出Excel" onclick="return exportExcel()" />
								
                            	<div style="float:right;">
									<b>
									<%-- <p:page uri="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageIndex=" fenye="${requestScope.fenye }"></p:page> --%>
									<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageIndex=1">首页</a>&nbsp;&nbsp;&nbsp;
									
									<c:if test="${fenye.pageNow>1 }">
										<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageNow=${fenye.pageNow-1 }">上一页</a>&nbsp;&nbsp;&nbsp;
										<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageNow=${fenye.pageNow-1 }">&lt;&lt;</a>&nbsp;&nbsp;&nbsp;
									</c:if>
									
									
									<font style="font-size:15pt">1</font>&nbsp;&nbsp;&nbsp;
									<c:forEach var="index" begin="2" end="${fenye.pageCount }" step="1">
										<c:if test="${index<=5 }">
											<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageNow=${index }">${index }</a>&nbsp;&nbsp;&nbsp;
										</c:if>
									</c:forEach>
										......
									<c:forEach var="index" begin="2" end="${fenye.pageCount }" step="1">
										<c:if test="${index>fenye.pageCount-5 }">
											<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageNow=${index }">${index }</a>&nbsp;&nbsp;&nbsp;
										</c:if>
									</c:forEach>
									<c:if test="${fenye.pageNow<fenye.pageCount }">
										<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageNow=${fenye.pageNow+1 }">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;
										<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageNow=${fenye.pageNow+1 }">下一页</a>&nbsp;&nbsp;&nbsp;
									</c:if>
									<a href="UserServlet?type=select&username=${requestScope.user.username }&tel=${requestScope.user.tel }&pageNow=${fenye.pageCount }">尾页</a>&nbsp;&nbsp;&nbsp;
									每页显示${fenye.pageSize }条&nbsp;&nbsp;&nbsp;
									当前 ${fenye.pageNow }/${fenye.pageCount } 页&nbsp;&nbsp;&nbsp;
									共${fenye.pageRow }条
									</b>
								</div>
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