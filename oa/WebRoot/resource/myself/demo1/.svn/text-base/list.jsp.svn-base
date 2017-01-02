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
            <div class="box_top"><b class="pl15">待处理任务</b></div>
            <div class="box_center pt10 pb10">
              <table class="form_table" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>发起时间</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10">to
				  <input type="text" name="name" class="input-text lh25" size="10"></td>                
                 
                  <td>任务类型</td>
                  <td><select class="input-text lh25"><option>请选择</option><option>请假申请</option><option>出差申请</option>
				  <option>用车管理</option><option>用章管理</option><option>图书借阅申请</option>
				  <option>名片印刷申请</option><option>收入证明</option></select></td>
				  <td>状态</td>
				  <td><select class="input-text lh25"><option>请选择</option><option>待审核</option><option>审核通过</option>
				  <option>驳回</option>
				  </select></td>
                   <td><input type="submit" name="button" class="btn btn82 btn_search" value="查询">
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
                   <th>任务名称</th>
                   <th>发起时间</th>
                   <th>发起人</th>
                   <th>最后审批时间</th>
				   <th>状态</th>
				   <th>操作</th>
                    </tr>
                <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td><a href="look.html">张三请假申请</a></td>
                   <td>2015-12-10 20:10:00</td>
                   <td>张三</td>
				   <td></td>
                   <td>待审核</td>
				   <td>
				      <a href="#">通过</a> |&nbsp;
					  <a href="#">驳回</a> |&nbsp;
					  <a href="look.html">查看</a> 
				   </td>
                 </tr>
				   <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td><a href="look1.html">李四用车申请</a></td>
                   <td>2015-12-10 20:10:00</td>
                   <td>李四</td>
				   <td>2015-10-10 20:10:30</td>
                   <td>审核通过</td>
				   <td>
				     
					  <a href="look.html">查看</a> 
				   </td>
                 </tr>
				  <tr class="tr" align="center">
                   <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td><a href="look.html">王五图书借阅申请</a></td>
                   <td>2015-12-10 20:10:00</td>
                   <td>王五</td>
				   <td>2015-12-11 10:00:00</td>
                   <td>审核不通过</td>
				   <td>
					  <a href="look.html">查看</a> 
				   </td>
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