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
            <div class="box_top"><b class="pl15">添加菜单</b></div>
            <div class="box_center">
              <form action="list.html" class="jqtransform">
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr>
                  <td class="td_right">菜单名称：</td>
                  <td class=""> 
                    <input type="text" name="name" class="input-text lh30" size="40" value="用户管理">
                  </td>
				  </tr>
                <tr >
                  <td class="td_right">父级菜单：</td>
                  <td class="">
 
                    <span class="fl">
                      <div class="select_border"> 
                        <div class="select_containers "> 
                        <select name="" class="select">
						<option>顶级菜单</option>
                        <option>系统设置</option> 
                        <option>通告管理</option>
						<option>人事管理</option>
						<option>行政管理</option>
                        </select> 
                        </div> 
                      </div> 
                    </span>
                  </td>
                 </tr>

				 <tr>
                  <td class="td_right">路径：</td>
				  <td><input type="" name="name" class="input-text lh30" size="40" value="UserServlet.do"></td>
                </tr>
                 <tr>
                  <td class="td_right">状态：</td>
                  <td class="">
                    <input type="radio" name="status" checked> 启用
                    <input type="radio" name="status"> 冻结
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