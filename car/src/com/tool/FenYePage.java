package com.tool;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class FenYePage extends SimpleTagSupport {
	
	private static String uri;
	private static com.entity.FenYe fenye;
	
	public static String getUri() {
		return uri;
	}

	public static void setUri(String uri) {
		FenYePage.uri = uri;
	}

	public static com.entity.FenYe getFenye() {
		return fenye;
	}

	public static void setFenye(com.entity.FenYe fenye) {
		FenYePage.fenye = fenye;
	}

	@Override
	public void doTag() throws JspException, IOException {
		
		
		JspWriter out=getJspContext().getOut();
		StringBuffer sb=new StringBuffer("");
		/*<a href="UserServlet?type=select&username=${u.username }&tel=${u.tel }&pageIndex=1">首页</a>&nbsp;&nbsp;&nbsp;
		
		<c:if test="${fenye.pageNow>1 }">
			<a href="UserServlet?type=select&username=${u.username }&tel=${u.tel }&pageNow=${fenye.pageNow-1 }">上一页</a>&nbsp;&nbsp;&nbsp;
			<a href="UserServlet?type=select&username=${u.username }&tel=${u.tel }&pageNow=${fenye.pageNow-1 }">&lt;&lt;</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		*/
			sb.append("a href='");
			sb.append(uri);
			sb.append(1);
			sb.append("'>首页</a>&nbsp;&nbsp;&nbsp;");
			if(fenye.getPageNow()>1){
				sb.append("<a href='");
				sb.append(uri);
				sb.append(fenye.getPageNow()-1);
				sb.append("'>上一页</a>&nbsp;&nbsp;&nbsp;<a href='");
				sb.append(uri);
				sb.append(fenye.getPageNow()-1);
				sb.append("'>&lt;&lt;</a>&nbsp;&nbsp;&nbsp;");
			}
		/*
		
		<font style="font-size:15pt">1</font>&nbsp;&nbsp;&nbsp;
		<c:forEach var="index" begin="2" end="${fenye.pageCount }" step="1">
			<c:if test="${index<=5 }">
				<a href="UserServlet?type=select&username=${u.username }&tel=${user.tel }&pageNow=${index }">${index }</a>&nbsp;&nbsp;&nbsp;
			</c:if>
		</c:forEach>
		*/
			
			sb.append("<font style='font-size:15pt'>1</font>&nbsp;&nbsp;&nbsp");
			
			for(int i=2;i<fenye.getPageCount();i++){
				if(i<=5){
					sb.append("<a href='");
					sb.append(uri);
					sb.append(i);
					sb.append("'>");
					sb.append(i);
					sb.append("</a>&nbsp;&nbsp;&nbsp;");
				}
			}
			
			/*
			......
		<c:forEach var="index" begin="2" end="${fenye.pageCount }" step="1">
			<c:if test="${index>fenye.pageCount-5 }">
				<a href="UserServlet?type=select&username=${u.username }&tel=${user.tel }&pageNow=${index }">${index }</a>&nbsp;&nbsp;&nbsp;
			</c:if>
		</c:forEach>*/
			
			
			sb.append("...");
			
			for(int i=2;i<fenye.getPageCount();i++){
				if(i>=fenye.getPageCount()-5){
					sb.append("<a href='");
					sb.append(uri);
					sb.append(i);
					sb.append("'>");
					sb.append(i);
					sb.append("</a>&nbsp;&nbsp;&nbsp;");
				}
			}
			/*
		
		<c:if test="${fenye.pageNow<fenye.pageCount }">
			<a href="UserServlet?type=select&username=${u.username }&tel=${u.tel }&pageNow=${fenye.pageNow+1 }">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;
			<a href="UserServlet?type=select&username=${u.username }&tel=${u.tel }&pageNow=${fenye.pageNow+1 }">下一页</a>&nbsp;&nbsp;&nbsp;
		</c:if>*/
			
			if(fenye.getPageNow()<fenye.getPageCount()){
				
				
				sb.append("<a href='");
				sb.append(uri);
				sb.append(fenye.getPageNow()+1);
				sb.append("'>&gt;&gt;</a>&nbsp;&nbsp;&nbsp;<a href='");
				sb.append(uri);
				sb.append(fenye.getPageNow()+1);
				sb.append("'>下一页</a>&nbsp;&nbsp;&nbsp;");
			}
			/*
		<a href="UserServlet?type=select&username=${u.username }&tel=${u.tel }&pageNow=${fenye.pageCount }">尾页</a>&nbsp;&nbsp;&nbsp;
		每页显示${fenye.pageSize }条&nbsp;&nbsp;&nbsp;
		当前 ${fenye.pageNow }/${fenye.pageCount } 页&nbsp;&nbsp;&nbsp;
		共${fenye.pageRow }条*/
			sb.append("<a href='");
			sb.append(uri);
			sb.append(fenye.getPageCount());
			sb.append("'>尾页</a>&nbsp;&nbsp;&nbsp;");
			sb.append("每页显示");
			sb.append(fenye.getPageSize());
			sb.append("/");
			sb.append(fenye.getPageCount());
			sb.append("&nbsp;&nbsp;&nbsp;共");
			sb.append(fenye.getPageRow());
			sb.append("条");
			
			out.write(sb.toString());
		}
	}
	