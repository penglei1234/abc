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
                  <td>姓名</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10"></td>                
                 
                  <td>真实姓名</td>
                  <td><input type="text" name="name" class="input-text lh25" size="10"></td>
                   <td><input type="button" name="button" class="btn btn82 btn_search" value="查询">
			    <input type="button" name="button" class="btn btn82 btn_recycle" value="清空"></td>
                </tr>
               
              </table>
            </div>
        
             <div  class="box_bottom pb5 pt5 pr10" style="border-top:1px solid #dadada;">
              <div class="search_bar_btn" style="text-align:center;" >
                 
                 <a href="add.html" class="ext_btn"><span class="add"></span>添加用户</a>
              </div>
            </div>
			</div>  </div>
			</form>

 <div id="table" class="mt10">
        <div class="box span10 oh">
              <table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table">
                <tr>
				   <th> <input type="checkbox"></th>
                   <th >用户名</th>
                   <th >真实姓名</th>
                   <th >角色</th>
                   <th>机构/部门</th>
				   <th>状态</th>
				   <th>操作</th>
                    </tr>
                <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td><a href="look.html">zhangsan</a></td>
                   <td>张三</td>
                   <td>普通用户</td>
				   <td>华电/研发部</td>
                   <td>启用</td>
				   <td>
				      <a href="#">冻结</a> |&nbsp;
					  <a href="edit.html">编辑</a> |&nbsp;
					  <a href="javascript:void(0)" onclick="del()">删除</a> 
				   </td>
                 </tr>
				  <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td><a href="look.html">lisi</a></td>
                   <td>李四</td>
                   <td>普通用户</td>
				   <td>华电/研发部</td>
                   <td>冻结</td>
				   <td>
				      <a href="#">启用</a> |&nbsp;
					  <a href="edit.html">编辑</a> |&nbsp;
					  <a href="javascript:void(0)" onclick="del()">删除</a> 
				   </td>
                 </tr>
				  <tr class="tr" align="center">
                   <td class="td_center"><input type="checkbox"></td>
                   <td><a href="look.html">admin</a></td>
                   <td>王武</td>
                   <td>管理员</td>
				   <td>华电/研发部</td>
                   <td>启用</td>
				   <td>
				      <a href="#">冻结</a> |&nbsp;
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