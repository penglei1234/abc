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
            <div class="box_top"><b class="pl15">任务明细</b></div>
            <div class="box_center">
              <form action="list.html" class="jqtransform">
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
			    <tr>
                  <td class="td_right">姓名：</td>
                  <td class="">张三</td>
                 </tr>
                 <tr>
                 <tr>
                  <td class="td_right">部门：</td>
                  <td class=""> 
                    研发部
                  </td>
				  </tr>
				  <tr>
                  <td class="td_right">开始时间：</td>
				  <td>2012-12-12 09:00:00</td>
                </tr>
				<tr>
                  <td class="td_right">结束时间：</td>
				  <td>2012-12-15 09:00:00</td>
                </tr>
					   <tr>
						  <td class="td_right">请假天数：</td>
						  <td class=""> 
							4天
						  </td>
					  </tr>
					   <tr>
						  <td class="td_right">请假类型：</td>
						  <td class=""> 
							事假
						  </td>
					  </tr>
					   <tr>
						  <td class="td_right">请假事由：</td>
						  <td class=""> 
							家里有急事
						  </td>
					  </tr>
				
                     <tr>
						  <td class="td_right">审批人：</td>
						  <td class=""> 
							李四
						  </td>
					  </tr><tr>
						  <td class="td_right">审核意见：</td>
						  <td class=""> 
							暂无审核
						  </td>
					  </tr>
					   <tr>
						  <td class="td_right">审批时间：</td>
						  <td class=""> 
							无
						  </td>
					  </tr>
                 
                 
               
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