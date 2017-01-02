package com.tool;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

public class CreateImageCode {
	private static final int WIDTH = 65;
	private static final int HEIGHT = 25;
	// 随机生成（字符串）验证码的方法
	public static String createCode(){
		String src = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		Random r = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 4; i++) {
			// 生成一个随机整数（0-35）
			int index = r.nextInt(36);
			sb.append(src.charAt(index));
		}
		return sb.toString();
	}
	// 生成图片验证码的方法
	public static BufferedImage createImageCode(String code){
		// 创建图片对象
		BufferedImage img = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		// 画布
		Graphics g = img.getGraphics();
		drawBackground(g);
		drawCode(g,code);
		// 释放资源
		g.dispose();
		return img;
	}
	// 绘制图片背景和干扰点、干扰线的方法
	public static void drawBackground(Graphics g){
		Random r = new Random();
		// 设置颜色
		g.setColor(Color.GRAY);
		// 绘制矩形：第一个和第二个参数是矩形的顶点
		g.fillRect(0, 0, WIDTH, HEIGHT);
		for (int i = 0; i < 10; i++) {
			g.setColor(new Color(r.nextInt(256),r.nextInt(256),r.nextInt(256)));
			// 绘制干扰点或干扰线
			g.drawLine(r.nextInt(65), r.nextInt(25), r.nextInt(65), r.nextInt(25));
			//g.drawOval(r.nextInt(65), r.nextInt(25), r.nextInt(10), r.nextInt(10));
			//g.drawRect(r.nextInt(65), r.nextInt(25), r.nextInt(10), r.nextInt(10));
		}
	}
	// 将字符串验证码绘制到图片上的方法
	public static void drawCode(Graphics g,String code){
		// 设置颜色
		g.setColor(new Color(0xFFFF00));
		// font中的第一个参数：字体名称   第二个参数：样式  BOLD（粗体）  第三个参数：字号
		g.setFont(new Font(null, Font.BOLD, 18));
		
		//g.drawString(code, 10, 15);
		Random r = new Random();
		g.drawString(""+code.charAt(0), r.nextInt(5), 15+r.nextInt(10));
		g.drawString(""+code.charAt(1), 15+r.nextInt(5), 15+r.nextInt(10));
		g.drawString(""+code.charAt(2), 30+r.nextInt(5), 15+r.nextInt(10));
		g.drawString(""+code.charAt(3), 45+r.nextInt(5), 15+r.nextInt(10));
	}
}
