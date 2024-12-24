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
@WebServlet("/update")
public class UpdateAccount extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("name");
		String phonenumber=req.getParameter("phone");
		String mail=req.getParameter("mail");
		
		long phone=Long.parseLong(phonenumber);
		
		HttpSession session=req.getSession(false);
		Customer c=(Customer)session.getAttribute("customer");
		CustomerDAO cdao=new CustomerDAOImpl();
		c.setName(name);
		c.setMail(mail);
		c.setPhone(phone);
		boolean result=cdao.updateCustomer(c);
		if(result==true)
		{
			
			req.setAttribute("success", "Account Updated Successfully!");
			RequestDispatcher rd=req.getRequestDispatcher("updateaccount.jsp");
			rd.forward(req, resp);
		}
		else {
			
			req.setAttribute("failure", "Failed to Update your Account!");
			RequestDispatcher rd=req.getRequestDispatcher("updateaccount.jsp");
			rd.forward(req, resp);
		}


	}

}
