package com.tool;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PageTag extends SimpleTagSupport{

	private String url;
	private Page page;
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	@Override
	public void doTag() throws JspException, IOException {
		
		JspWriter out=getJspContext().getOut();
		StringBuffer sb=new StringBuffer();
		
		/*<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="20%" height="25">
          <table border="0" cellspacing="0" cellpadding="3">
            <tr>*/
		sb.append("<table width='100%' border='0' cellspacing='0' cellpadding='0'>");
		sb.append("<tr>");
		sb.append("<td width='20%' height='25'>");
		sb.append("<table border='0' cellspacing='0' cellpadding='3'>");
		sb.append("<tr>");
		/*
		/*<td><a href="webSite?type=select&pageNow=1"><img src="images/prev_top.gif" width="16" height="16" border="0" title="首页"></a></td>
		 */
		sb.append("<td><a href='");
		sb.append(url);
		sb.append(1);
		sb.append("'><img src='images/prev_top.gif' width='16' height='16' border='0' title='首页'></a></td>");
		
		/* 
        <c:if test="${page.pageNow>1 }">
         <td><a href="webSite?type=select&pageNow=${page.pageNow-1 }"><img src="images/prev.gif" width="16" height="16" border="0" title="上一页"></a></td>
        </c:if>*/
		if(page.getPageNow()>1){
			
			sb.append("<td><a href='");
			sb.append(url);
			sb.append(page.getPageNow()-1);
			sb.append("'><img src='images/prev.gif' width='16' height='16' border='0' title='上一页'></a></td>");
		}
		
		/*
        <c:if test="${page.pageNow<7 }">
         <td><a href="webSite?type=select&pageNow=${page.pageNow+1 }"><img src="images/next.gif" width="16" height="16" border="0" title="下一页"></a></td>
        </c:if>*/
		
		if(page.getPageNow()<page.getPageCount()){
			
			sb.append("<td><a href='");
			sb.append(url);
			sb.append(page.getPageNow()+1);
			sb.append("'><img src='images/next.gif' width='16' height='16' border='0' title='下一页'></a></td>");
		}
		/*
         <td><a href="webSite?type=select&pageNow=${page.pageCount }"><img src="images/prev_end.gif" width="16" height="16" border="0" title="尾页"></a></td>*/
		sb.append("<td><a href='");
		sb.append(url);
		sb.append(page.getPageCount());
		sb.append("'><img src='images/prev_end.gif' width='16' height='16' border='0' title='尾页'></a></td>");
		
		
		
		/*</tr>
        </table>
        </td>
        <td width="20%" align="center">
        <table border="0" cellspacing="0" cellpadding="3">
          <tr>
          */
		sb.append("</tr></table></td>");
		sb.append("<td width='20%' align='center'>");
		sb.append("<table border='0' cellspacing='0' cellpadding='3'><tr>");
		/*
          <c:if test="${page.pageNow<page.pageCount }">
              <td><!-- 如何拿到文本框中输入的页数 -->
              <a href="webSite?type=select&pageNow=" id="inpagenow" onclick="javascript:document.getElementById('inpagenow').href+=document.getElementById('txt').value;"><img src="images/next.gif" width="16" height="16" border="0"></a>
              </td>
             </c:if>
              
           */
		//if(page.getPageNow()<page.getPageCount()){
			sb.append("<td><a href='");
			sb.append(url);
			sb.append("' onclick=\"javascript:this.href+=document.getElementById(\'txt\').value;\"><img src='images/next.gif' width='16' height='16' border='0'></a></td>");
		//}
		
		/*
            <td><input name="textfield23" id="txt" type="text" size="3" style="width:25;height:18" onkeyup="javascript:document.getElementById('inpagenow').href+=document.getElementById('txt').value;" />
                /页</td>
          </tr>
        </table>
        </td>
        <td width="20%" align="right">共${page.pageCount }条记录显示到${page.pageNow }/${page.pageCount }</td>
      </tr>
    </table>*/
		sb.append("<td><input name='textfield23' id='txt' type='text' size='3' style='width:25;height:18' onkeyup='javascript:alert('hello');document.getElementById('inpagenow').href+=document.getElementById('txt').value;' >/页</td>");
		sb.append("</tr></table></td>");
		sb.append("<td width='20%' align='right'>共");
		sb.append(page.getPageCount());
		sb.append("条记录显示到");
		sb.append(page.getPageNow());
		sb.append("/");
		sb.append(page.getPageCount());
		sb.append("</td></tr></table>");
		
		out.print(sb.toString());
	}
}
