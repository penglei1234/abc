<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="/WEB-INF/pageTag.tld"  %>
<html>
<head>
	<base href="<%=basePath%>"	/>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src ="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function selectFinaceTbType(){
		var request=new XMLHttpRequest();
		request.open("get", "finaceTb?type=select", true);
		request.send();
		request.onreadystatechange=function(){
			if(request.readyState==4&&request.status==200){
				var requestContent=request.responseText;
				//alert(requestContent);
				var jsonObj=JSON.parse(requestContent);
				var select="<select id='u2_input' name='finaceType'>";
				select+="<option value=''>―请选择―</option>";
				for(var i=0;i<jsonObj.length;i++){
					select+="<option value='"+jsonObj[i].finaceType+"'>";
					select+=jsonObj[i].finaceType;
					select+="</option>";
				}
				select+="</select>";
				document.getElementById("finaceTbType").innerHTML=select;
			}
		};
	}
	function operate(obj){
		var reports=document.getElementsByClassName("report");
		if(obj.value=='导出excel'){
			var res=isselect();
			if(!res){
				alert("没有数据不能导出!!");
				return false;
			}else{
				document.getElementById("form2").action="reportList?type=selectByIds";
				document.getElementById("form2").submit();
			}
		}else if(obj.value=='全部导出'){
			for(var i=0;i<reports.length;i++){
				if(reports[i].id=='thead'){
					reports[i].checked=false;
				}else{
					reports[i].checked=true;
				}
			}
			document.getElementById("form2").action="reportList?type=selectByIds";
			document.getElementById("form2").submit();
		}else if(obj.value=='search'){
			document.getElementById("form2").action="";
			document.getElementById("form2").submit();
		}	
	}
	function isselect(){
		var flag=false;
		var reports=document.getElementsByClassName("report");
		for(var i=0;i<reports.length;i++){
			flag|=reports[i].checked;
		}
		return flag;
	}
</script>
</head>
<body onload="selectFinaceTbType()">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
    <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;报表管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;报表管理</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>报表管理</strong></td>
          <td align="right" class="white" style="padding-right:20px">
		  </td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;">
    <form id="form1" method="post">
    <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
      <TR>
        <th width="10%" align="center">财务类型</th>
        <td width="10%" class="BGCgray">
        <span id="finaceTbType"></span>
			<!-- <select id="u2_input">
			<option selected value="―请选择―" onclick="searchFinaceType()">―请选择―</option>
			<option value="代理款">代理款</option>
			<option value="转账">转账</option>
			<option value="财务打款">财务打款</option>
			<option value="冻结">冻结</option>
			<option value="扣费">扣费</option>
			<option value="代理款冲抵">代理款冲抵</option>
	        <option value="消费">消费</option>
			<option value="退费">退费</option>
			<option value="返款">返款</option>
			<option value="罚款">罚款</option>
        	<option value="代理款预录">代理款预录</option>
     		</select> -->
		</td>
		<th width="10%" align="center">操作时间</th>
        <td width="25%" class="BGCgray">
			<input type="text" name="startTime" value="${startTime }" onFocus="WdatePicker({isShowClear:false,readOnly:true})" class="Wdate"/>至<input type="text" name="endTime" value="${endTime }" onFocus="WdatePicker({isShowClear:false,readOnly:true})" class="Wdate"/>
		</td>
        <th width="25%" align="center">
        <input type="button" style="HEIGHT:25px" value="导出excel" onClick="javascript:if (confirm('导出excel？')) return operate(this);else return">&nbsp;&nbsp;
        <input type="button" style="HEIGHT:25px" value="全部导出" onClick="javascript:if (confirm('全部导出excel？')) return operate(this);else return">&nbsp;&nbsp;
        <BUTTON style="HEIGHT:25px" value="search" onClick="return operate(this)">
        <img src="images/btn_search.gif" width="16" height="16" align="absmiddle"> 查询</BUTTON></th>
        </TR>
    </table>
    </form>
    </td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
    <form id="form2" method="post">
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
        
        <TR>
          <th align="center"><input type="checkbox" class="report" id="thead"></th>
          <th align="center">序号</th>
          <th align="center">操作人</th>
          <th align="center">目标用户</th>
          <th align="center">金额</th>
		  <th align="center">操作时间</th>
          <th align="center">操作</th>
        </TR>
        
        <c:forEach items="${reportList }" var="report" begin="0" step="1" end="10" varStatus="state">
        <TR>
		  <td align="center"><input type="checkbox" class="report" name="id" value="${report.repId }" onclick="isselect()"></td>
		  <td align="center">${state.index+1 }</td>
		  <td align="center">${report.repAgentName }</td>
		  <td align="center">${report.repCusterm }</td>
		  <td align="center">${report.repMoney }</td>
		  <td align="center">${report.repNowDate }</td>		 
		  <td align="center">
		  
		  <input type="button" value="查看" style="height:21px; font-size:12px;" onClick="javascript:if (confirm('查看该菜单详情？')) location.href='webSite?type=view&flag=fromcname&cname=${report.repCusterm }'" />
		  </td>
		</TR>
        </c:forEach>
		<!-- <TR>
		  <td align="center"><input type="checkbox" name="checkbox" id="checkbox"></td>
		  <td align="center">1</td>
		  <td align="center">hanlu</td>
		  <td align="center">sdf</td>
		  <td align="center">1000</td>
		  <td align="center">2013-02-05 22:46:40</td>		 
		  <td align="center">
		  <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('查看该菜单详情？')) location.href='pages/website/website-info.jsp';else return;">查看</BUTTON>
		  </td>
		</TR> -->
        
      </table>
      </form>
      <p:page url="reportList?type=select&finaceType=${finaceType }&startTime=${startTime }&endTime=${endTime }&pageNow=" page="${page }"/>
      <!-- <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      </table> -->
    </div>
  </td>
  </tr>
</table>
</body>
</html>