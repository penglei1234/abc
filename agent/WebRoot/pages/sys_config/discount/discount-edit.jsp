<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<script type="text/javascript">
function discountUpdate(){
        var dsctType=document.getElementById("dsctType").value;
        var dsctYear=document.getElementById("dsctYear").value;
        var realYear=document.getElementById("realYear").value;
    	var statev=document.getElementsByName("state");
    	var state=0;
    	for(var i=0;i<statev.length;i++){
    		if(statev[i].checked){
    			state=statev[i].value;
    		}
    	}
    	if(dsctType==""||dsctYear==""||dsctYear==""){
    		var span=document.getElementById("dsctTypeSpan");
    		var span=document.getElementById("dsctYearSpan");
    		var span=document.getElementById("realYearSpan");
    	span.innerHTML="<font color='red'>类型不能为空，请重新输入</font>";	
    	}else{
    		location.href="discount?method=save&id="+${discountTb.id }+"&dsctType1="+dsctType+"&dsctYear2"+dsctYear+"&realYear2"+realYear+"&state="+state;	
    	}

}
</script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;系统配置管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;优惠类型添加</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>优惠类型添加</strong></td>
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
          <th width="20%" align="center">类型名称</th>
          <TD class="BGCgray"><input type="text" name="dsctType" id="dsctType" value="${discountTb.dsctType }"/><span id="dsctTypeSpan"></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">类型数值</th>
          <TD class="BGCgray"><input type="text" name="dsctYear" id="dsctYear" value="${discountTb.dsctYear }"/><span id="dsctYearSpan"></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">实际数值</th>
          <TD class="BGCgray"><input type="text" name="realYear" id="realYear" value="${discountTb.realYear }"/><span id="realYearSpan"></span></TD>
        </TR>
		<TR>
          <th width="20%" align="center">是否启用</th>
          <TD class="BGCgray">
			<input type="radio" name="state" id="on" value="1" ${discountTb.state==1?"checked":"" } checked /><label for="on">启用</label>
			<input type="radio" name="state" id="off" value="0" ${discountTb.state==0?"checked":"" }/><label for="off">禁用</label>
		  </TD>
        </TR>
        
		</table>
      <div style="width:100%; text-align:center; padding:5px">
        <BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('保存信息？')) discountUpdate();"><img src="images/btn_save.gif" width="16" height="16" align="absmiddle"> 保存</BUTTON>
        <BUTTON style="HEIGHT:25px" onClick="history.back()"><img src="images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
      </div>
    </div>
  </td>
  </tr>
</table>
</body>
</html>