package com.manager;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/adc")
public class AddtoCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddtoCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String cid = request.getParameter("cid");
		
		//HttpSession liya h add to cart ki value add karne k liye server pe
		HttpSession ss =  request.getSession();
		
		ArrayList ar = null;
		ar = (ArrayList)ss.getAttribute("items");
		if(ar==null)
		{
			ar = new ArrayList();
			ss.setAttribute("items", ar);
		}
		ar.add(cid);
		System.out.println("ar..."+ar);//ar contain pid all item 9 9  6 6
////////////////////////////////////////////////////////////////////////////////////		
		int count = 0;											/////////////////////			
		String s = null;										/////////////////////
		for(Object t: ar)										/////////////////////
		{														/////////////////////
			 s = (String)t;     // s contain pid all items. 9 9 6 6//////////////////
			if(cid.equals(s))									/////////////////////				
			{													/////////////////////
			  count++;											/////////////////////
			}													/////////////////////		
		}														/////////////////////	
		System.out.println(s+"count..."+count); 				/////////////////////
/////////////////////////////////////////////////////////////////////////////////////	
		response.sendRedirect("home.jsp");
	}

}
