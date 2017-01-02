<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<!doctype html>
 <html >
 <head>
	<base href="<%=basePath%>"	/>

   <meta charset="UTF-8">
   <link rel="stylesheet" href="../../../css/common.css">
   <link rel="stylesheet" href="../../../css/main.css">
   <script type="text/javascript" src="../../../js/jquery.min.js"></script>
   <script type="text/javascript" src="../../../js/colResizable-1.3.min.js"></script>
   <script type="text/javascript" src="../../../js/common.js"></script>
</head>

<body>
  <div id="forms" class="mt10">
        <div class="box">
          <div class="box_border">
            <div class="box_top"><b class="pl15">编辑角色</b></div>
            <div class="box_center">
              <form action="list.html" class="jqtransform">
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr>
                  <td class="td_right">角色名称：</td>
                  <td class=""> 
                    <input type="text" name="name" class="input-text lh30" size="40" value="系统管理员">
                  </td>
				  </tr>
				  <tr>
                  <td class="td_right">备注：</td>
				  <td> <textarea name="" id="" cols="30" rows="10" class="textarea">管理一切</textarea></td>
                </tr>
                 <tr>
                  <td class="td_right">状态：</td>
                  <td class="">
                    <input type="radio" name="status" checked> 启用
                    <input type="radio" name="status"> 禁用
                  </td>
                 </tr>
                 
                <tr>
                  <td class="td_right">权限：</td>
                  <td class="">
				    <input type="checkbox" name="check" checked>系统设置<br/>
					&nbsp;&nbsp;&nbsp;<input type="checkbox" name="check" checked>用户管理<br/>
					&nbsp;&nbsp;&nbsp;<input type="checkbox" name="check" checked>角色管理<br/>
					&nbsp;&nbsp;&nbsp;<input type="checkbox" name="check" checked>菜单管理<br/>
					&nbsp;&nbsp;&nbsp;<input type="checkbox" name="check" checked>操作日志<br/>
				  </td>
                 </tr>
                 <tr>
                   <td class="td_right">&nbsp;</td>
                   <td class="">
                     <input type="submit" name="button" class="btn btn82 btn_save2" value="保存"> 
                    <input type="button" name="button" class="btn btn82 btn_res" onclick="location.href='javascript:history.go(-1)'" value="返回"> 
                   </td>
                 </tr>
               </table>
               </form>
            </div>
          </div>
        </div>
     </div>
   </div> 
</body>

</html>