package com.pim;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WelcomePage extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String UserName=req.getParameter("username");
		String Password=req.getParameter("pass");
		//need to cross reference this with a database.
		//MySQL
		if(UserName.equals("Marshall")) {
			if(Password.equals("Mathers")) {
		//Link to WelcomePage.html
		resp.sendRedirect("WelcomePage.html");
			}
			else {
				//jsp of errors. Wrong password.. new account maybe? or forgot credentials
				PrintWriter oop=resp.getWriter();
				oop.println("Wrong password");
			}
		}
		else {
			//a jsp of errors : in this case wrong username have one for wrong password
			PrintWriter pw=resp.getWriter();
			pw.println("Incorrect Username");
		}
			
	}

	
}
