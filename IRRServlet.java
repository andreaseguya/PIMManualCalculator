package com.pim;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IRRServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String yi=req.getParameter("YearOfInput");
		double yoi=Double.parseDouble(yi);
		
		String cfs=req.getParameter("Ct");
		double cf=Double.parseDouble(cfs);
		
		String ini=req.getParameter("C0");
		double C0=Double.parseDouble(ini);
		
		String rate=req.getParameter("r");
		double r=Double.parseDouble(rate);
		
		String ty=req.getParameter("t");
		double t=Double.parseDouble(ty);
	}
	

}
