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
   <link rel="stylesheet" href="../../../css/common.css">
   <link rel="stylesheet" href="../../../css/main.css">
   <script type="text/javascript" src="../../../js/jquery.min.js"></script>
   <script type="text/javascript" src="../../../js/colResizable-1.3.min.js"></script>
   <script type="text/javascript" src="../../../js/common.js"></script>

  <script type="text/javascript">
    function del(){
	  confirm("确认删除");
	}
	function delall(){
	  confirm("确认取消");
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
            <div class="box_top"><b class="pl15">会议室预定管理</b></div>
            <div class="box_center pt10 pb10">
              <table class="form_table" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>预定时间段</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10">to
				  <input type="text" name="name" class="input-text lh25" size="10">(预定时间段必须为同一天)
				  </td>                
                 
                  <td>预定人</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10"></td>
				  <td>会议室名称</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10"></td>
				  <td>会议类型</td>
                  <td><select class="input-text lh25"><option>-请选择-</option>
				  <option>会议</option><option>面试</option><option>培训</option><option>会客</option><option>其他</option>
				  </select></td>
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
                   <th >会议室名称</th>
                   <th >会议室起始时间</th>
				   <th >会议室结束时间</th>
				   <th >会议室用途</th>
				   <th >批准人</th>
				   <th >预定人</th>
				   <th>预定时间</th>
                    </tr>
                <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>C212</td>
                   <td>2013-12-10 14:10:30</td>
				   <td>2013-12-10 14:50:30</td>
				   <td>会议</td>
				   <td>张三</td>
				   <td>李四</td>
				   <td>2013-10-10</td>
                 </tr>
				  <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>C212</td>
                   <td>2013-12-10 14:10:30</td>
				   <td>2013-12-10 14:50:30</td>
				   <td>培训</td>
				   <td>张三</td>
				   <td>李四</td>
				   <td>2013-10-10</td>
                 </tr>
				  <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td>C212</td>
                   <td>2013-12-10 14:10:30</td>
				   <td>2013-12-10 14:50:30</td>
				   <td>面试</td>
				   <td>张三</td>
				   <td>李四</td>
				   <td>2013-10-10</td>
                 </tr>
				



                
               <tr>
			   <td colspan="3"><input type="button" name="button" class="btn btn82 btn_del" value="取消" onclick="delall()">
			    <input type="button" name="button"  class="btn btn82 btn_export" value="导出" onclick="excel()">
				<input type="button" name="button" class="btn btn82 btn_res"  value="返回" onclick="location.href='javascript:history.go(-1)'">
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