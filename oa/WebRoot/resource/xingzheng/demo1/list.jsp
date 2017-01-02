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
        <div  class="box_bottom pb5 pt5 pr10" style="border-top:1px solid #dadada;">
              <div class="search_bar_btn" style="text-align:left;" >
                  <a href="list1.html" class="ext_btn"><span class=""></span>会议室预定管理</a>
                 <a href="yuding.html" class="ext_btn"><span class=""></span>会议室预定</a>
              </div>
            </div>
    
        
             <div  class="box_bottom pb5 pt5 pr10" style="border-top:1px solid #dadada;">
              <div class="search_bar_btn" style="text-align:center;" >
                 
                 <a href="add.html" class="ext_btn"><span class="add"></span>添加会议室</a>
              </div>
            </div>
			
		
 <div id="table" class="mt10">
        <div class="box span10 oh">
              <table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table">
                <tr>
				   <th> <input type="checkbox"></th>
                   <th >会议室名称</th>
                   <th >会议室描述</th>
				   <th>操作</th>
                    </tr>
                <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>C212</td>
                   <td>C座二楼多媒体会议室</td>
				   <td>
					  <a href="edit.html">编辑</a> |&nbsp;
					  <a href="javascript:void(0)" onclick="del()">删除</a> 
				   </td>
                 </tr>
				  <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>B212</td>
                   <td>B座二楼多媒体会议室</td>
				   <td>
					  <a href="edit.html">编辑</a> |&nbsp;
					  <a href="javascript:void(0)" onclick="del()">删除</a> 
				   </td>
                 </tr><tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>A212</td>
                   <td>A座二楼多媒体会议室</td>
				   <td>
					  <a href="edit.html">编辑</a> |&nbsp;
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