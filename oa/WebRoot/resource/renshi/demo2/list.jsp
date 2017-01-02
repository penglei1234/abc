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
   <link rel="stylesheet" href="css/common.css">
   <link rel="stylesheet" href="css/main.css">
   <script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
   <script type="text/javascript" src="js/common.js"></script>
</head>

<body>
  <div id="forms" class="mt10">
        <div class="box">
          <div class="box_border">
            <div class="box_top"><b class="pl15">出差申请</b></div>
            <div class="box_center">
              <form action="list.html" class="jqtransform">
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr>
                  <td class="td_right">姓名：</td>
                  <td class=""> 
                    李四
                  </td>
				  </tr>
				  <tr>
                  <td class="td_right">部门：</td>
                  <td class=""> 
                    研发部
                  </td>
				  </tr>
				  <tr>
                  <td class="td_right">出差时间：</td>
				  <td><input type="" name="name" class="input-text lh30" size="40">to
				  <input type="" name="name" class="input-text lh30" size="40"></td>
                </tr>
				<tr>
                  <td class="td_right">出差地点：</td>
				  <td><input type="" name="name" class="input-text lh30" size="40"></td>
                </tr>
				<tr>
                  <td class="td_right">交通工具：</td>
				  <td><select class="input-text lh30">
				  <option>火车</option><option>飞机</option><option>汽车</option><option>轮船</option>
				  </select></td>
                </tr>
				<tr>
                  <td class="td_right">出差事由：</td>
				  <td><textarea name="name" class="input-text lh30"></textarea></td>
                </tr>
				<tr>
                  <td class="td_right">工作任务：</td>
				  <td><textarea name="name" class="input-text lh30"></textarea></td>
                </tr>
				<tr>
                  <td class="td_right">借款金额：</td>
				  <td><input type="" name="name" class="input-text lh30" size="40"></td>
                </tr>
				
				<tr>
                  <td class="td_right">下一步审批人：</td>
				  <td><select class="input-text lh30"><option>请选择</option><option>张三</option><option>李四</option></select></td>
                </tr>
                 <tr>
                   <td class="td_right">&nbsp;</td>
                   <td class="">
                     <input type="submit" name="button" class="btn btn82 btn_save2" value="确定"> 
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