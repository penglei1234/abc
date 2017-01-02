<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<!doctype html>
 <html lang="zh-CN">
 <head>
	<base href="<%=basePath%>"	/>

   <meta charset="UTF-8">
   <link rel="stylesheet" href="css/common.css">
   <link rel="stylesheet" href="css/main.css">
   <script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
   <script type="text/javascript" src="js/common.js"></script>

  <script type="text/javascript">
    function del(){
	  confirm("确认删除");
	}
	function delall(){
	  confirm("确认删除");
	}
	function excel(){
	  confirm("确认导出");
	}
  </script>
</head>
<body>
<form action="list.html" method="post">
     <div id="search_bar" class="mt10">
       <div class="box">
          <div class="box_border">
            <div class="box_top"><b class="pl15">搜索</b></div>
            <div class="box_center pt10 pb10">
              <table class="form_table" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>用户名</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10"></td>                
                   <td>时间段</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10">to
				  <input type="text" name="name" class="input-text lh25" size="10"></td> 
                  
                   <td><input type="button" name="button" class="btn btn82 btn_search" value="查询">
			    <input type="button" name="button" class="btn btn82 btn_recycle" value="清空"></td>
                </tr>
               
              </table>
            </div>
        
         
			</div>  </div>
			</form>

 <div id="table" class="mt10">
        <div class="box span10 oh">
              <table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table">
                <tr>
				   <th> <input type="checkbox"></th>
                   <th >用户名称</th>
                   <th >角色</th>
                   <th >事件</th>
				   <th>备注</th>
				   <th>操作时间</th>
                    </tr>
                <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>zhangsan</td>
                   <td>系统管理员</td>
				   <td>添加了用户</td>
                   <td>无</td>
				   <td>2015-12-10 15:27:30</td>
                 </tr>
				<tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>lisi</td>
                   <td>人事专员</td>
				   <td>发布了公告</td>
                   <td>无</td>
				   <td>2015-12-11 20:02:20</td>
                 </tr>
				 <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>admin</td>
                   <td>系统管理员</td>
				   <td>添加了用户</td>
                   <td>无</td>
				   <td>2015-12-10 9:10:20</td>
                 </tr>


                
               <tr>
			   <td colspan="2">
			    <input type="button" name="button"  class="btn btn82 btn_export" value="导出" onclick="excel()">
				</td>
				<td colspan="5" align="right">
				     <div class="page mt10">
						<div class="pagination">
						  <ul >
							  <li class="first-child"><a href="#">首页</a></li>
							  <li class=""><span>上一页</span></li>
							  <li class="active"><span>1</span></li>
							  <li><a href="#">2</a></li>
							  <li><a href="#">3</a></li>
							  <li><a href="#">4</a></li>
							  <li><a href="#">下一页</a></li>
							  <li ><a href="#">末页</a></li>
							   <li ><span>共3条数据</span></li>
					     <li ><span>共5页</span></li>
						  </ul>
						</div>
                     </div>
				</td>
			   </tr>
              </table>			  
		
             
        </div>
     </div>

</body>
</html>