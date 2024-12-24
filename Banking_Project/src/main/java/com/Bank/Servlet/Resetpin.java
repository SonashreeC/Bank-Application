package com.Bank.Servlet;

import java.io.IOException;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DTO.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/resetpin")
public class Resetpin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mail=req.getParameter("mail");
		String phonenumber=req.getParameter("phone");
		String password=req.getParameter("pin");
		String confirmm=req.getParameter("confirm");
		
		long phone=Long.parseLong(phonenumber);
		int pin=Integer.parseInt(password);
		int confirm=Integer.parseInt(confirmm);
		
		HttpSession session=req.getSession(false);
		Customer c=(Customer)session.getAttribute("customer");
		CustomerDAO cdao=new CustomerDAOImpl();
		
		if(mail.equals(c.getMail()) && phone==c.getPhone() && pin==confirm)
		{
			c.setPin(pin);
			boolean result=cdao.updateCustomer(c);
			if(result==true)
			{
				req.setAttribute("success", "New Pin Update Successfully!");
				RequestDispatcher rd=req.getRequestDispatcher("resetpin.jsp");
				rd.forward(req, resp);
			}
			else
			{
				req.setAttribute("failure", "PIN not changed!");
				RequestDispatcher rd=req.getRequestDispatcher("resetpin.jsp");
				rd.forward(req, resp);
			}
		}
		else {
			req.setAttribute("failure", "Invalid Credentials!");
			RequestDispatcher rd=req.getRequestDispatcher("resetpin.jsp");
			rd.forward(req, resp);
			
		}
	}

}
