<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<base href="<%=basePath%>"	/>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src=js/main.js"></script>
<script type="text/javascript" src=js/json2.js"></script>
<script type="text/javascript">
	function searchCompany(input){
		
		var cname=input.value;
		if(cname.length>1){
		
			var request=new XMLHttpRequest();
			request.open("post", "webSite", true);
			request.setRequestHeader("content-type", "application/x-www-form-urlencoded");
			request.send("type=selectByCname&cname="+cname);
			request.onreadystatechange=function(){
			
				if(request.readyState==4&&request.status==200){
					var requestContent=request.responseText;
					if(requestContent!=''){
						var company=JSON.parse(requestContent);
						//alert(company.cid);
						input.nextSibling.nodeValue='';
						document.getElementById("cid").value=company.cid;
						input.value=company.cname;
					}else{
						input.nextSibling.nodeValue="该公司不存在";
					}
				}		
			};
		}	
	}
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
				select+="<option selected value='―请选择―'>―请选择―</option>";
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
</script>
</head>
<body onload="selectFinaceTbType()">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">c&nbsp;&nbsp;&nbsp; 当前位置： <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;财务管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;财务管理</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>财务管理</strong></td>
          <td align="right" class="white" style="padding-right:20px">
          <a href="#" class="barBtn" onClick="javascript:history.go(-1);"><img src="images/btn_left.gif" align="absmiddle"> 后退</a>
          <a href="#" class="barBtn" onClick="javascript:history.go(+1);"><img src="images/btn_right.gif" align="absmiddle"> 前进</a>
          <a href="#" class="barBtn"><img src="images/btn_refresh.gif" align="absmiddle"> 刷新</a>
          </td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    
    <div style="overflow:auto;height:100%; width:100%">
    <form id="form1" action="reportList?type=insert" method="post">
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
        <TR>
          <th width="20%" align="center">搜索用户</th>
          
          <TD class="BGCgray"><input type="hidden" id="cid" name="cid" /><input type="text" name="cname" onkeyup="searchCompany(this)" />输入后自动搜索</TD>
        </TR>
		<TR>
          <th width="20%" align="center">操作类型</th>
          <TD class="BGCgray">
          <span id="finaceTbType"></span>
			<%-- <select id="u2_input" name="finaceType">
			<option selected value="―请选择―">―请选择―</option>
			<c:forEach items="${finaceTbList }" var="finaceTb">
				<option value="${finaceTb.finaceType }">${finaceTb.finaceType }</option>
			</c:forEach>
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
      </select> --%>

		  </TD>
        </TR>
        <TR>
          <th align="center">操作资金</th>
          <TD width="80%" class="BGCgray"><input type="text" name="money" />
		  <br/>
		  重要提示:输入的资金数，正数（1000）为向账户添加1000元，负数（-1000）为向账户减少1000元，精确到小数点两位
		  </TD>
        </TR>
        <TR>
        	<th align="center">操作备注</th>
          	<TD class="BGCgray">
				<textarea cols="25" rows="6" name="remark"></textarea>
            </TD>
        </TR>
      </table>
      </form>
      <div style="width:100%; text-align:center; padding:5px">
        <BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('保存信息？')) document.getElementById('form1').submit();else return;"><img src="images/btn_save.gif" width="16" height="16" align="absmiddle"> 保存</BUTTON>
        <BUTTON style="HEIGHT:25px" onClick="history.back()"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
      </div>
    </div>
  </td>
  </tr>
</table>
</body>
</html>