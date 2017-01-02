<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="p" uri="/WEB-INF/pageTag.tld" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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



   <script>
   
      var newWin;
       function openNewWin1(){
		   
		  newWin= window.open("keyword-kt.jsp","newWin","width=600,height=400,menubar=yes,location=yes,resizable=no");
	   }
	   
	   function closeWin(){
		   
		      newWin.close();
		   }
		   
		function openNewWin2(){
		   
		  newWin= window.open("keyword-xf.jsp","newWin","width=600,height=400,menubar=yes,location=yes,resizable=no");
	   }   
	    
   </script>



</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
    <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp;
    <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理&nbsp;&nbsp;
    <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商申请管理</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>代理商申请管理</strong></td>
          <td align="right" class="white" style="padding-right:20px">
		  <a href="#" class="barBtn" onClick="javascript:history.go(-1);"><img src="images/btn_left.gif" align="absmiddle"> 后退 </a> 
		  <a href="#" class="barBtn" onClick="javascript:history.go(+1);"><img src="images/btn_right.gif" align="absmiddle"> 前进 </a> 
		  <a href="#" class="barBtn"><img src="images/btn_refresh.gif" align="absmiddle"> 刷新 </a></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;">
    <form action="KeyWordCheckServlet?method=selectKey" method="post">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
      <TR>
        <th width="10%" align="center">关键词：
        <td width="20%" class="BGCgray"><input type="text" name="name" id="textfield">

</div></th></td>
        <th width="10%" align="center"><BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('查询数据？')) location.href='KeyWordCheckServlet?method=selectKey';else return;"><img 

src="images/btn_search.gif" width="16" height="16" align="absmiddle"> 查询</BUTTON></th>
        </TR>
    </table>
    </form></td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
        <TR>
          <th align="center">序号</th>
          <th align="center">关键词</th>
          <th align="center">客户名称</th>
           <th align="center">代理商</th>
          <th align="center">申请年限</th>
          <th align="center">申请日期</th>
          <th align="center">到期日期</th>
          <th align="center">申请到期状态</th>
          <th align="center">审核状态</th>
          <th align="center">使用状态</th>
          <th align="center">APP开通状态</th>
          <th width="200" align="center">操作</th>
        </TR>
        <!-- TR>
           
          <TD width="200" align="center">

		<input type="button" value="开通APP" onClick="javascript:location.href='keyword-kt.jsp'" />
		<input type="button" value="续费" onClick="javascript:location.href='keyword-xf.jsp'" />
		</TD>
        </TR>


        <TR>
         
          <TD width="200" align="center">
		<font color = dimgray>无操作</font>
	</TD>
        </TR>

        <TR>
          
           <TD width="200" align="center">
		<font color = dimgray>无操作</font>
	</TD>
        </TR>

        <TR>
          
          <TD width="200" align="center">
		
		<input type="button" value="续费" onClick="javascript:location.href='keyword-xf.jsp'" />
	</TD>
        </TR>
	<TR>
          <td align="center">5</td>
          <td align="center">1嘉顿实业123</td>
          <td align="center">嘉顿实业</td>
          <td align="center">3</td>
          <td align="center">2013-10-24 21:09:48</td>
          <td align="center">2014-10-24 21:07:48</td>
          <td align="center">未过期</td>
          <td align="center">已申请</td>
          <td align="center">已使用</td>
          <td align="center">未开通</td>
<TD width="200" align="center">
		<font color = dimgray>无操作</font>
	</TD>
        </TR>   -->
        <c:forEach items="${keyword}" var="k" varStatus="i">
        
        
        <TR>
          <td align="center">${ (page.pageNow-1)*page.pageSize+i.index+1}</td>
           <td align="center">${k.keywordName}</td>
          <td align="center">${k.user.userLogName}</td>
          <td align="center">${k.user.userRealName}</td>
          <td align="center">${k.keywordYears}</td>
          <td align="center">${k.keywordNewdate }</td>
          <td align="center">${k.keywordDate }</td>
          <td align="center"><c:if test="${k.keywordApplyState==1}">未过期</c:if><c:if test="${k.keywordApplyState==0}">已过期</c:if></td>
          <td align="center"><c:if test="${k.keywordCheckState==1}">已通过审核</c:if><c:if test="${k.keywordCheckState==0}">审核未通过</c:if>
          <c:if test="${k.keywordCheckState==2}">已申请</c:if><c:if test="${k.keywordCheckState==3}">审核中 </c:if></td>
          <td align="center"><c:if test="${k.keywordUserState==1 }">已使用</c:if> <c:if test="${k.keywordUserState==0 }">未使用</c:if>  </td>
          <td align="center"> <c:if test="${k.keywordAppState==1 }">已开通</c:if><c:if test="${k.keywordAppState==0 }">未开通</c:if> </td>
<TD width="200" align="center">
		<c:if test="${k.keywordAppState==0 }"><input type="button" value="开通App" onClick="javascript:location='';" /></c:if> 
       <c:if test="${k.keywordCheckState==0}">  <input type="button" value="递交审核" onClick="javascript:alert('操作成功！');" /></c:if>
	  <c:if test="${k.keywordApplyState==1}">  <input type="button" value="续费" onClick="javascript:location='';" /></c:if>
	 <c:if test="${k.keywordUserState==0}">  <input type="button" value="退费" onClick="javascript:alert('操作成功！');" /></c:if>
	 <c:if test="${k.keywordCheckState==1}">  <input type="button" value="编辑" onClick="javascript:location='';" /></c:if>
		
		
		
	</TD>
        </TR>
       </c:forEach>
      </table>
     <!--  <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20%" height="25"><table border="0" cellspacing="0" cellpadding="3">
            <tr>
              <td><a href="#"><img src="images/prev_top.gif" width="16" height="16" border="0"></a></td>
              <td><a href="#"><img src="images/prev.gif" width="16" height="16" border="0"></a></td>
              <td><a href="#"><img src="images/next.gif" width="16" height="16" border="0"></a></td>
              <td><a href="#"><img src="images/prev_end.gif" width="16" height="16" border="0"></a></td>
            </tr>
          </table></td>
          <td width="20%" align="center"><table border="0" cellspacing="0" cellpadding="3">
            <tr>
              <td><a href="#"><img src="images/next.gif" width="16" height="16" border="0"></a></td>
              <td><input name="textfield23" type="text" size="3" style="width:25;height:18">
                /页</td>
            </tr>
          </table></td> -->
                <p:page page="${page }" url="KeyWordCheckServlet?dg=1&method=selectKey&name=${name }&pageNow="/>

        </tr>
      </table>
    </div>
  </td>
  </tr>
</table>
</body>
</html>