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
  <link rel="stylesheet" href="css/style.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
  <script type="text/javascript">
  $(function(){
      $(".sideMenu").slide({
         titCell:"h3", 
         targetCell:"ul",
         defaultIndex:0, 
         effect:'slideDown', 
         delayTime:'500' , 
         trigger:'click', 
         triggerTime:'150', 
         defaultPlay:true, 
         returnDefault:false,
         easing:'easeInQuint',
         endFun:function(){
              scrollWW();
         }
       });
      $(window).resize(function() {
          scrollWW();
      });
  });
  function scrollWW(){
    if($(".side").height()<$(".sideMenu").height()){
       $(".scroll").show();
       var pos = $(".sideMenu ul:visible").position().top-38;
       $('.sideMenu').animate({top:-pos});
    }else{
       $(".scroll").hide();
       $('.sideMenu').animate({top:0});
       n=1;
    }
  } 

var n=1;
function menuScroll(num){
  var Scroll = $('.sideMenu');
  var ScrollP = $('.sideMenu').position();
  /*alert(n);
  alert(ScrollP.top);*/
  if(num==1){
     Scroll.animate({top:ScrollP.top-38});
     n = n+1;
  }else{
    if (ScrollP.top > -38 && ScrollP.top != 0) { ScrollP.top = -38; }
    if (ScrollP.top<0) {
      Scroll.animate({top:38+ScrollP.top});
    }else{
      n=1;
    }
    if(n>1){
      n = n-1;
    }
  }
}

function back(){
  if(confirm("确认退出")){
    window.location.href="login.jsp";
  }
  
}
  </script>
  <title>后台首页</title>
</head>
<body>
    <div class="top">
      <div id="top_t">
        <div id="logo" class="fl"></div>
        <div id="photo_info" class="fr">
          <div id="photo" class="fl">
            <a href="#"><img src="images/a.png" alt="" width="60" height="60"></a>
          </div>
          <div id="base_info" class="fr">
            <div class="help_info">
              <a href="#" id="hp">&nbsp;</a>
              <a href="#" id="gy">&nbsp;</a>
              <a href="javascript:void(0)" onclick="back()" id="out">&nbsp;</a>
            </div>
            <div class="info_center">
              admin
              <span id="nt">通知</span><span><a href="#" id="notice">3</a></span>
            </div>
          </div>
        </div>
      </div>
      <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">当前位置：</div>
      </div>
    </div>
    <div class="side">
        <div class="sideMenu" style="margin:0 auto">
		 <h3>我的桌面</h3>
          <ul>
            <li><a href="resource/myself/demo1/list.jsp" target="right">待处理任务</a></li>
            <li><a href="resource/myself/demo2/list.jsp" target="right">通告信息</a></li>
            <li><a href="resource/myself/demo3/list.jsp" target="right">密码修改</a></li>
            <li><a href="resource/myself/demo4/list.jsp" target="right">我的申请</a></li>
          </ul>
          <h3>系统设置</h3>
          <ul>
            <li><a href="resource/system/user/list.jsp" target="right">用户管理</a></li>
            <li><a href="resource/system/role/list.jsp" target="right">角色管理</a></li>
            <li><a href="resource/system/menu/list.jsp" target="right">菜单管理</a></li>
            <li><a href="resource/system/log/list.jsp" target="right">操作日志</a></li>
          </ul>
		  <h3>行政管理</h3>
          <ul>
            <li><a href="resource/xingzheng/demo1/list.jsp" target="right">会议室管理</a></li>
            <li><a href="resource/xingzheng/demo2/list.jsp" target="right">用车管理</a></li>
            <li><a href="resource/xingzheng/demo3/list.jsp" target="right">用章管理</a></li>
            <li><a href="resource/xingzheng/demo4/list.jsp" target="right">图书借阅申请</a></li>
			<li><a href="resource/xingzheng/demo5/list.jsp" target="right">名片印制流程</a></li>
          </ul>
		  <h3>人事管理</h3>
          <ul>
            <li><a href="resource/renshi/demo1/list.jsp" target="right">请假申请</a></li>
            <li><a href="resource/renshi/demo2/list.jsp" target="right">出差申请</a></li>
            <li><a href="resource/renshi/demo3/list.jsp" target="right">收入证明流程</a></li>
          </ul>
		  <h3>通告管理</h3>
          <ul>
            <li><a href="resource/tonggao/demo1/list.jsp" target="right">通告列表</a></li>
          </ul>
		  <h3>文档管理</h3>
          <ul>
            <li><a href="resource/wendang/demo1/list.jsp" target="right">文档列表</a></li>
            <li><a href="resource/wendang/demo2/list.jsp" target="right">文档回收站</a></li>
          </ul>
     
 
 
 

       </div>
    </div>
    <div class="main">
       <iframe name="right" id="rightMain" src="resource/myself/demo1/list.jsp" frameborder="no" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>
    </div>
    <div class="bottom">
      <div id="bottom_bg"></div>
    </div>
    <div class="scroll">
          <a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(1);"></a>
          <a href="javascript:;" class="next" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
    </div>
</body>

</html>
   
 
 