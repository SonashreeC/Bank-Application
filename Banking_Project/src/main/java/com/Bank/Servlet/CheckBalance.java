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
@WebServlet("/balance")
public class CheckBalance extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession(false);
		int pin=Integer.parseInt(req.getParameter("pin"));
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=(Customer)session.getAttribute("customer");
		
		if(c!=null && pin==c.getPin())
		{
			req.setAttribute("success", "Your Balance is:"+c.getBalance());
			RequestDispatcher rd=req.getRequestDispatcher("balance.jsp");
			rd.forward(req, resp);
		}
		else {
			req.setAttribute("failure", "Invalid Credential");
			RequestDispatcher rd=req.getRequestDispatcher("balance.jsp");
			rd.forward(req, resp);
		}
	}

}
