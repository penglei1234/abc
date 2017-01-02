<%@ page language="java" import="java.util.*,com.entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src=js/json2.js"></script>
	<script type="text/javascript">
		
		function sheng(){
			var request=new XMLHttpRequest();
			request.open("get", "sheng?method=selectsheng", true);
			request.send(null);
			request.onreadystatechange=function(){
				if(request.readyState==4&&request.status==200){
					var requestContent=request.responseText;
					//alert(requestContent);
					var sheng=JSON.parse(requestContent);
					var select="<select id='sheng' name='sheng' onchange='shi()'>";
					for(var i=0;i<sheng.length;i++){
						select+="<option value='"+sheng[i].sid+"'>";
						select+=sheng[i].sheng;
						select+="</option>";
					}
					select+="</select>";
					document.getElementById("shengspan").innerHTML=select;
					shi();
				}
			};
		}
		function shi(){
			var sid=document.getElementById("sheng").value;
			var request=new XMLHttpRequest();
			request.open("get", "sheng?method=selectshi&sid="+sid, true);
			request.send(null);
			request.onreadystatechange=function(){
				if(request.readyState==4&&request.status==200){
					var requestContent=request.responseText;
					var shi=JSON.parse(requestContent);
					var select="<select id='shi' name='shi' onchange='qu()' >";
					for(var i=0;i<shi.length;i++){
						select+="<option value='"+shi[i].hid+"'>";
						select+=shi[i].shi;
						select+="</option>";
					}
					select+="</select>";
					document.getElementById("shispan").innerHTML=select;
					qu();
				}
			};
		}
		function qu(){
			var hid=document.getElementById("shi").value;
			var request=new XMLHttpRequest();
			request.open("get", "sheng?method=selectqu&hid="+hid, true);
			request.send(null);
			request.onreadystatechange=function(){
				if(request.readyState==4&&request.status==200){
					var requestContent=request.responseText;
					var qu=JSON.parse(requestContent);
					var select="<select name='qu'>";
					for(var i=0;i<qu.length;i++){
						select+="<option value='"+qu[i].qid+"'>";
						select+=qu[i].qu;
						select+="</option>";
					}
					select+="</select>";
					document.getElementById("quspan").innerHTML=select;
				}
			};
		}
	</script>
  </head>
  
  <body onload="sheng()">
  
  <table>
  	<tr><td><span id="shengspan"></span></td></tr>
    <tr><td><span id="shispan"></span></td></tr>
    <tr><td><span id="quspan"></span></td></tr>
   </table>
  </body>
</html>
