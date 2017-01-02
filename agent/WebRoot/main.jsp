<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>"	/>

<title>代理商管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js"></script>
</head>
<body scroll="no">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="79" background="images/top_bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="500"><img src="images/top_left.jpg" width="500" height="79"></td>
          <td>&nbsp;</td>
          <td width="500" height="79"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/top_right_a.gif" width="500" height="47"></td>
              </tr>
              <tr>
                <td><table width="500" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="150"><img src="images/top_right_b1.gif" width="150" height="32"></td>
                    <td width="146" height="32" background="images/top_right_b2.gif" class="white">用户：administrator</td>
                    <td width="74"><a href="pages/self_config/user-info.jsp" target="page"><img src="images/top_right_b6.gif" width="74" height="32" border="0"></a></td>
                    <td width="50"><a href="login.jsp"><img src="images/top_right_b3.gif" width="50" height="32" border="0"></a></td>
                    <td width="50"><a href="#"><img src="images/top_right_b4.gif" width="50" height="32" border="0"></a></td>
                    <td width="30"><img src="images/top_right_b5.gif" width="30" height="32"></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="100%"><table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" style="background-repeat: repeat-x;">
        <tr>
          <td width="175" height="100%" valign="top"><table width="175" height="100%" border="0" cellspacing="0" cellpadding="0" background="images/menu_bg.gif">
              <tr>
                <td height="25"><img src="images/menu_top.gif" width="175" height="25"></td>
              </tr>
              <tr>
                <td height="100%" style="background-image:url(images/menu_bgT.gif); background-repeat:no-repeat" valign="top"><div class="dtree">
                    <script type="text/javascript">
					d = new dTree('d');
					d.config.stepDepth = 1;
					d.config.useStatusText = true;
					 
					d.add(0,-1,' <strong>代理商管理系统</strong>');
					d.add(1,0,'代理商管理');
					d.add(101,1,'关键词申请','pages/org/keyword/keyword-add.jsp',"",'page');
					d.add(102,1,'关键词申请管理','KeyWordCheckServlet?method=selectKey',"",'page');
					d.add(103,1,'代理商客户管理','company?method=select',"",'page');
					d.add(104,1,'代理商预付款','pages/proxy/customerPay/proxy-list.jsp',"",'page');
					d.add(105,1,'操作日志','riZhi?method=selectAll',"",'page');
					
					d.add(2,0,'门户管理');
					d.add(201,2,'门户管理','webSite?type=select',"",'page');
					
					d.add(3,0,'报表管理');
					d.add(301,3,'报表管理','reportList?type=select',"",'page');
					
					d.add(4,0,'系统管理');
					d.add(401,4,'财务管理','pages/org/finace/finace-add.jsp',"",'page');
					d.add(402,4,'角色管理','role?method=selectAllRoleInfo',"",'page');
					d.add(403,4,'菜单管理','',"",'page');
					d.add(404,4,'用户管理','user?method=selectAllUser',"",'page');
					d.add(405,4,'关键词审核','pages/org/keyword/keyword-list.jsp',"",'page');
					
					d.add(5,0,'系统配置管理');
					d.add(501,5,'财务类型','finaceTb?type=selectAll',"",'page');
					d.add(502,5,'服务类型','service?method=selectAll',"",'page');
					d.add(503,5,'服务年限','pages/sys_config/serviceType/service-year.jsp',"",'page');
					d.add(504,5,'app 类型','pages/sys_config/app/app-edit.jsp',"",'page');
					d.add(505,5,'客户类型','customer?method=selectAll',"",'page');
					d.add(506,5,'证件类型','license?method=selectAll',"",'page');
					d.add(507,5,'优惠类型','discount?method=selectAll',"",'page');
					d.add(6,0,'个人中心');
					d.add(601,6,'个人资料修改','pages/self_config/user-edit.jsp',"",'page');
					d.add(602,6,'修改密码','pages/self_config/password.jsp',"",'page');
					document.writeln(d);
					</script>
                </div></td>
              </tr>
              <tr>
                <td height="31"><img src="images/menu_foot.gif" width="175" height="31"></td>
              </tr>
            </table></td>
          <td><iframe src="pages/info/user-info.jsp" width="100%" height="100%" frameborder="0" scrolling="no" name="page"></iframe></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>