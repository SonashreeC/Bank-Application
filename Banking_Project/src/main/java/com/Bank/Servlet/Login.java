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
@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String acno=req.getParameter("accno");
		String mpin=req.getParameter("pin");
		
		long accno=Long.parseLong(acno);
		int pin=Integer.parseInt(mpin);
		
		
		
		HttpSession session=req.getSession();
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=cdao.getCustomer(accno, pin);
		if(c!=null) {
			if(c.getAccno()==1100110011) {
				session.setAttribute("customer", c);
				RequestDispatcher rd=req.getRequestDispatcher("admin.jsp");
				rd.forward(req, resp);
			}
			else {
			session.setAttribute("customer", c);
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, resp);
		}
		}
		else
		{
			req.setAttribute("failure", "Invalid MailID or Password");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
	}

}
