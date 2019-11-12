package com.pim;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NPVServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//for the database
		String Initial= req.getParameter("I");
		double I=Double.parseDouble(Initial);
		//net cash flows
		String y= req.getParameter("box-0");
		double numOfYears=Double.parseDouble(y);
		
		//dont know if this works yet
		String CashFlows[]=req.getParameterValues("array");
		
		System.out.println("Testing CFs "+ CashFlows);
		
		//the rate (now converted to a decimal)
		String r=req.getParameter("r");
		double rateint=Double.parseDouble(r);
		double rate=rateint/100;
		
		 
		//Double n=n(CF,rate,t);
		//double NPV=intRiemann(0,t,n);
		//System.out.println("the NPV is " +NPV);
		//req.setAttribute("NPV", NPV);
		//req.getRequestDispatcher("NPV.jsp").forward(req, resp);

	}
	
	
}
