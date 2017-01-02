package com.servlet;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tool.CreateImageCode;

public class CreateImageServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 获取字符串类型的验证码
		String code = CreateImageCode.createCode();
		// 将字符串的验证码加入到session中
		req.getSession().setAttribute("code", code);
		// 获取图片验证码
		BufferedImage image = CreateImageCode.createImageCode(code);
		
		// 设置响应头信息
		resp.setHeader("Pragma", "No-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);
		// MIME类型
		resp.setContentType("image/jpeg");
		// 创建输出流
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		// 通过图片工具类，将图片信息载入到输出流中
		ImageIO.write(image, "JPEG", out);
		
		// 将图片信息转换成字节数组
		byte[] buffer = out.toByteArray();
		// 设置响应数据的长度
		resp.setContentLength(buffer.length);
		// 从response中获取输出流
		ServletOutputStream output = resp.getOutputStream();
		// 将图片信息的字节数组发送到客户端
		output.write(buffer);
		// 清空缓存区
		output.flush();
		// 关闭输出流
		output.close();
		out.close();
	}
}
