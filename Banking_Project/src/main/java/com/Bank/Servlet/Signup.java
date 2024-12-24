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
@WebServlet("/signup")
public class Signup extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("name");
		String phonenumber=req.getParameter("phone");
		String mail=req.getParameter("mail");
		String password=req.getParameter("pin");
		String confirm=req.getParameter("confirm");
		
		long phone=Long.parseLong(phonenumber);
		int pin=Integer.parseInt(password);
		
		
		Customer c=new Customer();
		CustomerDAO cdao=new CustomerDAOImpl();
		
		if(confirm.equals(password))
		{
			c.setName(name);
			c.setPhone(phone);
			c.setMail(mail);
			c.setPin(pin);
			
			
			boolean res=cdao.insertCustomer(c);
			if(res==true)
			{
				req.setAttribute("success", "Account Created Successfully!");
				RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
				rd.forward(req, resp);
			}
			else
			{
				req.setAttribute("failure", "Failed to Create an Account! Please try again");
				RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
				rd.forward(req, resp);
			}
		}
		else
		{
			req.setAttribute("Mismatch", "Password Mismatch");
			RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
			rd.forward(req, resp);
		}
	}

}
