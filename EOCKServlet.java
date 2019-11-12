package com.pim;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EOCKServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String yi=req.getParameter("YearOfInput");
		double yoi=Double.parseDouble(yi);
		
		String ee=req.getParameter("Ef");
		double ef=Double.parseDouble(ee);
	
		String Er=req.getParameter("Er");
		double er=Double.parseDouble(Er);
		
		String nn=req.getParameter("n");
		double n=Double.parseDouble(nn);
		
		String Sto=req.getParameter("St");
		double st=Double.parseDouble(Sto);
		
		String Sri=req.getParameter("Sr");
		double sr=Double.parseDouble(Sri);
		
		String sfx=req.getParameter("Sf");
		double sf=Double.parseDouble(sfx);
		
		String yik=req.getParameter("y");
		double y=Double.parseDouble(yik);
		
		String mcj=req.getParameter("mcf");
		double mcf=Double.parseDouble(mcj);
		
		double eock=EOCK(er,ef,n,st,sf,sr,y,mcf);
		
		
	}
	public double EOCK(double er,double ef,double n,double st,double sf,double sr,double y,double mcf) {
		double numerator=er*(sr/st)*y*ef*(sf/st)*mcf-n*(22/7);
		double denom=er*(sr/st)+ef*(sf/st)-n;
		
		double result=(numerator/denom);
		
		return result;
	}
}
