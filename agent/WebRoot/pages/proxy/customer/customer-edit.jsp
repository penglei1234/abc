<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">

	function selectsheng(){
		var request=new XMLHttpRequest();
		request.open("get", "sheng?method=selectsheng", true);
		request.send(null);
		request.onreadystatechange=function(){
			if(request.readyState==4&&request.status==200){
				var requestContent=request.responseText;
				//alert(requestContent);
				var sheng=JSON.parse(requestContent);
				var select="<select id='sheng' name='sheng' onchange='selectshi()'>";
				for(var i=0;i<sheng.length;i++){
					select+="<option value='"+sheng[i].sid+"'>";
					select+=sheng[i].sheng;
					select+="</option>";
				}
				select+="</select>";
				document.getElementById("shengspan").innerHTML=select;
				selectshi();
			}
		};
	}
	function selectshi(){
	
		var sid=document.getElementById("sheng").value;
		var request=new XMLHttpRequest();
		request.open("get", "sheng?method=selectshi&sid="+sid, true);
		request.send(null);
		request.onreadystatechange=function(){
			if(request.readyState==4&&request.status==200){
				var requestContent=request.responseText;
				var shi=JSON.parse(requestContent);
				var select="<select id='shi' name='shi' onchange='selectqu()'>";
				for(var i=0;i<shi.length;i++){
					select+="<option value='"+shi[i].hid+"'>";
					select+=shi[i].shi;
					select+="</option>";
				}
				select+="</select>";
				document.getElementById("shispan").innerHTML=select;
				selectqu();
			}
		};
	}
	function selectqu(){
		var hid=document.getElementById("shi").value;
		var request=new XMLHttpRequest();
		request.open("get", "sheng?method=selectqu&hid="+hid, true);
		request.send(null);
		request.onreadystatechange=function(){
			if(request.readyState==4&&request.status==200){
				var requestContent=request.responseText;
				var qu=JSON.parse(requestContent);
				var select="<select name='qu'>";
				for(var i=0;i<qu.length;i++){
					select+="<option value='"+qu[i].qid+"'>";
					select+=qu[i].qu;
					select+="</option>";
				}
				select+="</select>";
				document.getElementById("quspan").innerHTML=select;
			}
		};
	}
	function selectLicsType(){
		var request=new XMLHttpRequest();
		request.open("get", "license?method=select", true);
		request.send();
		request.onreadystatechange=function(){
			if(request.readyState==4&&request.status==200){
				var requestContent=request.responseText;
				//alert(requestContent);
				var jsonObj=JSON.parse(requestContent);
				var select="<select id='licsType' name='licsType'>";
				//select+="<option selected>―请选择―</option>";
				for(var i=0;i<jsonObj.length;i++){
					select+="<option value='"+jsonObj[i].id+"'>";
					select+=jsonObj[i].licsType;
					select+="</option>";
				}
				select+="</select>";
				document.getElementById("licsTypespan").innerHTML=select;
			}
		};
	}
	function check(){
		
		var cname=document.getElementById("cname");		
		var cstmType=document.getElementById("cstmType");		
		var lowyer=document.getElementById("lowyer");	
		var licsType=document.getElementById("licsType");
		
		var phone=document.getElementById("phone");
		var licensecard=document.getElementById("licensecard");
		if(cname.value==''){
		
			cname.nextSibling.innerHTML="企业名不能为空";
			return false;
		}
		if(cstmType.value==''){
			cname.nextSibling.innerHTML="";
			cstmType.nextSibling.innerHTML="企业类型不能为空";
			return false;
		}
		if(lowyer.value==''){
			cname.nextSibling.innerHTML="";
			cstmType.nextSibling.innerHTML="";
			lowyer.nextSibling.innerHTML="法人不能为空";
			return false;
		}
		if(licsType.value==''){
			cname.nextSibling.innerHTML="";
			cstmType.nextSibling.innerHTML="";
			lowyer.nextSibling.innerHTML="";
			licsType.nextSibling.innerHTML="证件类型不能为空";
			return false;
		}
		if(phone.value==''){
			cname.nextSibling.innerHTML="";
			cstmType.nextSibling.innerHTML="";
			lowyer.nextSibling.innerHTML="";
			licsType.nextSibling.innerHTML="";
			phone.nextSibling.innerHTML="电话不能为空";
			return false;
		}
		if(licensecard.value==''){
			cname.nextSibling.innerHTML="";
			cstmType.nextSibling.innerHTML="";
			lowyer.nextSibling.innerHTML="";
			licsType.nextSibling.innerHTML="";
			phone.nextSibling.innerHTML="";
			licensecard.nextSibling.innerHTML="证件号码不能为空";
			return false;
		}
	}
</script>
</head>
<body onload="selectLicsType(),selectsheng()">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商客户管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商客户添加</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>代理商客户添加</strong></td>
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
    <form action="company?method=updateCompany" method="post">
    <input type="hidden" name="cid" value="${company.cid}" />
      <table  id="addTable" width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
		<TR>
          <th align="center" colspan="6">基本信息</th>
        </TR>
        <TR>
          <th width="20%" align="center">企业名称</th>
          <TD class="BGCgray" colspan="5"><input type="text" id="cname" name="cname" value="${company.cname }"/><span></span></TD>
        </TR>
        <TR>
        	<th align="center">企业类型</th>
          	<TD class="BGCgray" colspan="5">
            	<select id="cstmType" name="cstmType">
					<option>--请选择--</option>
					<option value="0" <c:if test="${company.cstmTypeTb.cstmType=='企业' }">selected</c:if> >企业</option>
					<option value="1" <c:if test="${company.cstmTypeTb.cstmType=='政府' }">selected</c:if> >政府</option>
					<option value="2" <c:if test="${company.cstmTypeTb.cstmType=='个人' }">selected</c:if> >个人</option>
				</select><span></span>
            </TD>
        </TR>
		<TR>
          <th width="20%" align="center">状态</th>
          <TD class="BGCgray" colspan="5">
			<select name="state">
				<option <c:if test="${company.state=='1' }">selected</c:if> >启用</option>
				<option <c:if test="${company.state=='0' }">selected</c:if> >禁用</option>
			</select>
		  </TD>
        </TR>
		<TR>
          <th width="20%" align="center">企业主页</th>
          <TD class="BGCgray" colspan="5"><input type="text" name="cweb" value="${company.cweb }" ></TD>
        </TR>


		<TR>
          <th align="center" colspan="6">门户信息</th>
        </TR>
		
		
		<TR>
          <th width="20%" align="center">法人代表</th>
          <TD class="BGCgray" colspan="2"><input type="text" id="lowyer" name="lowyer" value="${company.lowyer }"/><span></span></TD>
		  <th width="20%" align="center">注册日期</th>
          <TD class="BGCgray" colspan="2"><input type="text" name="regtime" value="${company.regtime }"/></TD>
        </TR>
		<TR>
          <th width="20%" align="center">证件类型</th>
          <TD class="BGCgray" colspan="2">
          <span id="licsTypespan"></span><span></span>
          </TD>
		  <th width="20%" align="center">证件号码</th>
          <TD class="BGCgray" colspan="2"><input type="text" id="licensecard" name="licensecard" value="${company.licensecard }"/><span></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">国家</th>
          <TD class="BGCgray" colspan="2"><input type="text" id="country" name="country" value="${company.country }"/></TD>
		  <th width="20%" align="center">省/地区</th>
          <TD class="BGCgray" colspan="2"><span id="shengspan"></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司传真</th>
          <TD class="BGCgray" colspan="2"><input type="text" name="fax" value="${company.fax }"/></TD>
		  <th width="20%" align="center">城市</th>
          <TD class="BGCgray" colspan="2"><span id="shispan"></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司电话</th>
          <TD class="BGCgray" colspan="2"><input type="text" id="phone" name="phone" value="${company.phone }"/><span></span></TD>
		  <th width="20%" align="center">区</th>
          <TD class="BGCgray" colspan="2"><span id="quspan"></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司地址</th>
          <TD class="BGCgray" colspan="5"><input type="text" name="address" value="${company.address }"/></TD>
        </TR>
		<TR>
          <th width="20%" align="center">备注</th>
          <TD class="BGCgray" colspan="5">
			<textarea cols="25" rows="6" name="remark" value="${company.remark }">${company.remark }</textarea>
		  </TD>
        </TR>
        <TR>
          <th width="20%" align="left" colspan="6"> <span style="color:blue;">联系人信息</span></th>
        </TR>
        <tr>
			<th>姓名</th><th>电话</th><th>传真</th><th>邮箱</th><th>职务</th><th></th>
		</tr>
		<c:forEach items="${company.lianXiRen }" var="p">
		
		<tr>
			
			<td><input type="hidden" name="lxid" value="${p.lxid }" /><input name="lxname" value="${p.lxname }" /></td>
			<td><input name="lxphone" value="${p.phone }" /></td>
			<td><input name="lxfax" value="${p.fax }" /></td>
			<td><input name="email" value="${p.email }" /></td>
			<td><input name="department" value="${p.department }" /></td><td></td>
		</tr>
		
		
		</c:forEach>
		
		</table>
      <div style="width:100%; text-align:center; padding:5px">
        <BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('保存信息？')) return check();else return;"><img src="images/btn_save.gif" width="16" height="16" align="absmiddle"> 保存</BUTTON>
        <BUTTON style="HEIGHT:25px" onClick="history.back()"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
      </div>
      </form>
    </div>
  </td>
  </tr>
</table>
</body>
</html>