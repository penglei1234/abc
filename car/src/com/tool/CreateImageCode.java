package com.tool;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

public class CreateImageCode {
		
	public static String createCode(){
		
		String str="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		StringBuffer sb=new StringBuffer();
		for(int i=0;i<4;i++){
			int index=new Random().nextInt(str.length());
			sb.append(str.charAt(index));
		}
		
		return sb.toString();

	}
	public static BufferedImage createImageCode(String code){
		BufferedImage image=new BufferedImage(65, 25, BufferedImage.TYPE_INT_RGB);
		Graphics g=image.getGraphics();
		imageBackGround(g);
		drawCode(code, g);
		return image;
	}
	public static void imageBackGround(Graphics g){
		
		Random r=new Random();
		g.setColor(Color.gray);
		g.fillRect(0, 0, 65, 25);
		
		for(int i=0;i<10;i++){
			g.setColor(new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256)));
			g.drawLine(r.nextInt(65), r.nextInt(25), r.nextInt(65), r.nextInt(25));
		}
		
	}
	public static void drawCode(String code,Graphics g){
		
		Random r=new Random();
		g.setColor(Color.blue);
		g.setFont(new Font(null, Font.ITALIC, 18));
		g.drawString(code.charAt(0)+"", 10+r.nextInt(5),15+r.nextInt(10));
		g.drawString(code.charAt(1)+"", 20+r.nextInt(5), 15+r.nextInt(10));
		g.drawString(code.charAt(2)+"", 30+r.nextInt(5), 15+r.nextInt(10));
		g.drawString(code.charAt(3)+"", 40+r.nextInt(5), 15+r.nextInt(10));
	}
}