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
            <div class="box_top"><b class="pl15">查看通告</b></div>
            <div class="box_center">
              <form action="list.html" class="jqtransform">
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr>
                  <td class="td_right">标题：</td>
                  <td class=""> 
                    最新公告通知
                  </td>
				  </tr>
				  <tr>
                  <td class="td_right">显示时间段：</td>
				  <td>2015-12-10to
				  2015-12-20</td>
                </tr>
					   <tr>
						  <td class="td_right">发布时间：</td>
						  <td class=""> 
							2015-10-10 20:1:30
						  </td>
					  </tr>
					   <tr>
						  <td class="td_right">发布人：</td>
						  <td class=""> 
							李四
						  </td>
					  </tr>
					   <tr>
						  <td class="td_right">内容：</td>
						  <td class=""> 
							safsafafasassafsafafasassafsafafasassafsafafasassafsafafasassafsafafasas
						  </td>
					  </tr>
			
              
                 <tr>
                   <td class="td_right">&nbsp;</td>
                   <td class="">
				   
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