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
	function del1(){
	  confirm("确认还原");
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

  &nbsp;文档回收站
 <div id="table" class="mt10">
        <div class="box span10 oh">
              <table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table">
                <tr>
				   <th> <input type="checkbox"></th>
                   <th >名称</th>
                   <th >类型</th>
                   <th >所有者</th>
				   <th>删除时间</th>
				   <th>操作</th>
                    </tr>
                <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>研究所文件夹</td>
                   <td>文件夹</td>
				   <td>张三</td>
                   <td>2015-12-20</td>
				   <td>
				      <a href="javascript:void(0)" onclick="del1()">还原</a> |&nbsp;
					  <a href="javascript:void(0)" onclick="del()">删除</a> 
				   </td>
                 </tr>
				  <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>个人总结</td>
                   <td>doc</td>
				   <td>张三</td>
                   <td>2015-12-20</td>
				   <td>
				      <a href="javascript:void(0)" onclick="del1()">还原</a> |&nbsp;
					  <a href="javascript:void(0)" onclick="del()">删除</a> 
				   </td>
                 </tr>
				  <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>部门制度</td>
                   <td>pdf</td>
				   <td>张三</td>
                   <td>2015-12-20</td>
				   <td>
				      <a href="javascript:void(0)" onclick="del1()">还原</a> |&nbsp;
					  <a href="javascript:void(0)" onclick="del()">删除</a> 
				   </td>
                 </tr>


                
               <tr>
			   <td colspan="2"><input type="button" name="button" class="btn btn82 btn_del" value="删除" onclick="delall()">
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