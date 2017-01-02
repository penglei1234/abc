package com.servlet;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tool.CreateImageCode;

public class CreateImageCodeServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setHeader("Pragma", "No-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);
		resp.setContentType("image/jpeg");
		
		String code=CreateImageCode.createCode();
		req.getSession().setAttribute("code", code);
		BufferedImage img=CreateImageCode.createImageCode(code);
		ByteArrayOutputStream bos=new ByteArrayOutputStream();
		ImageIO.write(img, "JPEG", bos);
		byte[] buffer=bos.toByteArray();
		resp.setContentLength(buffer.length);
		ServletOutputStream sos=resp.getOutputStream();
		sos.write(buffer);
		bos.close();
		sos.close();
	}
}
