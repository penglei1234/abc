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
<script src = "<%=basePath %>My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
    <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理系统&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商管理&nbsp;&nbsp; <img src="images/arrow.gif" align="absmiddle">&nbsp;&nbsp;代理商预付款</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20" height="34"><img src="images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>代理商预付款</strong></td>
          <td align="right" class="white" style="padding-right:20px">
		  <a href="#" class="barBtn" onClick="javascript:alert('操作成功！');"><img src="images/5.png" align="absmiddle"> 导出excel</a>
          <a href="#" class="barBtn" onClick="javascript:history.go(-1);"><img src="images/btn_left.gif" align="absmiddle"> 后退</a> 
		  <a href="#" class="barBtn" onClick="javascript:history.go(+1);"><img src="images/btn_right.gif" align="absmiddle"> 前进</a> 
		  <a href="#" class="barBtn"><img src="images/btn_refresh.gif" align="absmiddle"> 刷新</a>
		  </td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;"><table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
      <TR>
        <th width="10%" align="center">操作类型</th>
        <td width="10%" class="BGCgray">
		<select id="u2_input">
        <option selected value="系统自动―关键词申请扣款">系统自动―关键词申请扣款</option>
        <option value="系统自动―返回预注册冻结资金">系统自动―返回预注册冻结资金</option>
        <option value="系统自动―扣除申请关键词的所有资金">系统自动―扣除申请关键词的所有资金</option>
        <option value="系统自动―扣除关键词续费资金">系统自动―扣除关键词续费资金</option>
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
		</select>
		</td>
		<th width="10%" align="center">操作时间</th>
        <td width="30%" class="BGCgray">
		<input type="text" onFocus="WdatePicker({isShowClear:false,readOnly:true})"  class="Wdate"/>至<input type="text" onFocus="WdatePicker({isShowClear:false,readOnly:true})"  class="Wdate"/>
		</td>
        <th width="10%" align="center"><BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('查询数据？')) location.href='#';else return;"><img src="images/btn_search.gif" width="16" height="16" align="absmiddle"> 查询</BUTTON></th>
        </TR>
    </table></td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1">
        <TR>
          <th align="center">序号</th>
          <th align="center">财务类型</th>
          <th align="center">财务资金</th>
          <th align="center">账户余额</th>
		  <th align="center">备注信息</th>
		  <th align="center">明细时间</th>
        </TR>
        <TR>
		  <TD align="center">1</TD>
          <TD align="center">扣除【112】的正式注册资金</TD>
          <TD align="center">￥26000</TD>
		  <TD align="center">￥15785200.02</TD>
		  <TD align="center">韩露对112进行关键词申请审核通过自动正式扣款操作，扣除正式注册资金：260000</TD>
		  <TD align="center">2013-10-24 14:10:22</TD>
        </TR>
		<TR>
		  <TD align="center">2</TD>
          <TD align="center">扣除【112】的正式注册资金</TD>
          <TD align="center">￥26000</TD>
		  <TD align="center">￥15785200.02</TD>
		  <TD align="center">韩露对112进行关键词申请审核通过自动正式扣款操作，扣除正式注册资金：260000</TD>
		  <TD align="center">2013-10-24 14:10:22</TD>
        </TR>
		<TR>
		  <TD align="center">3</TD>
          <TD align="center">扣除【112】的正式注册资金</TD>
          <TD align="center">￥26000</TD>
		  <TD align="center">￥15785200.02</TD>
		  <TD align="center">韩露对112进行关键词申请审核通过自动正式扣款操作，扣除正式注册资金：260000</TD>
		  <TD align="center">2013-10-24 14:10:22</TD>
        </TR>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
      </table>
    </div>
  </td>
  </tr>
</table>
</body>
</html>