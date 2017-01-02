<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>"	/>
	
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src = "<%=basePath %>My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
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
				document.getElementById("licsType").innerHTML=select;
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
<form action="company?method=save" method="post">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top"><br>&nbsp;&nbsp;&nbsp; 当前位置： <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商客户管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商客户添加</td>
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
      <table  id="addTable" width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
		<TR>
          <th align="center" colspan="6">基本信息</th>
        </TR>
        <TR>
          <th width="20%" align="center">企业名称<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="5">
          	<input type="text" id="cname" name="cname" /><span></span>
          </TD>
        </TR>
        <TR>
        	<th align="center">企业类型<span style="color:red">*</span></th>
          	<TD class="BGCgray" colspan="5">
            	<select id="cstmType" name="cstmType" >
            		<option>--请选择--</option>
					<option value="0" selected>企业</option>
					<option value="1">政府</option>
					<option value="2">个人</option>
				</select><span></span>
            </TD>
        </TR>
		<TR>
          <th width="20%" align="center">状态</th>
          <TD class="BGCgray" colspan="5">
			<select name="state">
				<option value="0" selected>启用</option>
				<option value="1">禁用</option>
			</select>
		  </TD>
        </TR>



		<TR>
          <th align="center" colspan="6">门户信息</th>
        </TR>
		
		
		<TR>
          <th width="20%" align="center">法人代表<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="2"><input type="text" id="lowyer" name="lowyer" /><span></span></TD>
		  <th width="20%" align="center">注册日期</th>
          <TD class="BGCgray" colspan="2"><input type="text" name="regtime" onFocus="WdatePicker({isShowClear:false,readOnly:true})"  class="Wdate"/></TD>
        </TR>
		<TR>
          <th width="20%" align="center">证件类型<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="2">
          <span id="licsType"></span><span></span>
          </TD>
		  <th width="20%" align="center">证件号码<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="2"><input type="text" id="licensecard" name="licensecard" /><span></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">国家</th>
          <TD class="BGCgray" colspan="2">
          <input id="country" name="country" />
          </TD>
		  <th width="20%" align="center">省/地区<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="2">
          <span id="shengspan"></span>
          </TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司传真</th>
          <TD class="BGCgray" colspan="2"><input type="text" name="fax"/></TD>
		  <th width="20%" align="center">城市<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="2">
          <span id="shispan"></span>
          </TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司电话<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="2"><input type="text" id="phone" name="phone" /><span></span></TD>
		  <th width="20%" align="center">区<span style="color:red">*</span></th>
          <TD class="BGCgray" colspan="2">
          <span id="quspan"></span>
          </TD>
        </TR>
		<TR>
          <th width="20%" align="center">公司地址</th>
          <TD class="BGCgray" colspan="5"><input type="text" name="address"/></TD>
        </TR>
		<TR>
          <th width="20%" align="center">备注</th>
          <TD class="BGCgray" colspan="5">
			<textarea cols="25" rows="6" name="remark"></textarea>
		  </TD>
        </TR>
		<script>
			
			function addChild(){
			
			
			var addTable = document.getElementById("addTable");
			
			var newTr = document.createElement("tr");

			var newTd1 = document.createElement("td");
			var newInput1 = document.createElement("input");
			newInput1.name="lxname";
			newTd1.align = "center";
			newTd1.className = "BGCgray";
			newTd1.appendChild(newInput1);
			
			var newTd2 = document.createElement("td");
			var newInput2 = document.createElement("input");
			newInput2.name="lxphone";
			newTd2.align = "center";
			newTd2.className = "BGCgray";
			newTd2.appendChild(newInput2);

			var newTd3 = document.createElement("td");
			var newInput3 = document.createElement("input");
			newInput3.name="lxfax";
			newTd3.align = "center";
			newTd3.className = "BGCgray";
			newTd3.appendChild(newInput3);

			var newTd4 = document.createElement("td");
			var newInput4 = document.createElement("input");
			newInput4.name="email";
			newTd4.align = "center";
			newTd4.className = "BGCgray";
			newTd4.appendChild(newInput4);

			var newTd5 = document.createElement("td");
			var newInput5 = document.createElement("input");
			newInput5.name="department";
			newTd5.align = "center";
			newTd5.className = "BGCgray";
			newTd5.appendChild(newInput5);

			var newTd6 = document.createElement("td");
			var newEl = document.createElement("button");
			newTd6.align = "center";
			newTd6.className = "BGCgray";
			newEl.innerText = "删除";
			newEl.style.height = "25px";
			newEl.onclick = function(){
				var tr = newEl.parentNode.parentNode;
				tr.remove();
			};
			newTd6.className = "BGCgray";
			newTd6.appendChild(newEl);
			
			newTr.appendChild(newTd1);
			newTr.appendChild(newTd2);
			newTr.appendChild(newTd3);
			newTr.appendChild(newTd4);
			newTr.appendChild(newTd5);
			newTr.appendChild(newTd6);
			
			addTable.appendChild(newTr);
			}	
		</script>
		<TR>
          <th width="20%" align="left" colspan="6">  <a href="javascript:addChild();"><span style="color:blue;">添加一个联系人</span></a></th>
        </TR>
		<tr>
			<th>姓名<span style="color:red">*</span></th><th>电话<span style="color:red">*</span></th><th>传真</th><th>邮箱<span style="color:red">*</span></th><th>职务<span style="color:red">*</span></th><th>操作</th>
		</tr>
		</table>
      <div style="width:100%; text-align:center; padding:5px">
      <!-- <input type="button" value="保存" style=""   /> -->
        <BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('保存信息？')) return check();else return;"><img src="images/btn_save.gif" width="16" height="16" align="absmiddle"> 保存</BUTTON>
        <BUTTON style="HEIGHT:25px" onClick="history.back()"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
      </div>
    </div>
  </td>
  </tr>
</table>
</form>
</body>
</html>