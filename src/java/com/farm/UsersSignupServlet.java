package com.farm;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
@MultipartConfig
public class UsersSignupServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String city = req.getParameter("city");
		String address = req.getParameter("address");
       
        try 
        {
            UsersDtls u=new UsersDtls(firstname,lastname,password,email,contact,city,address);
            UsersDAO.addUsers(u);
            resp.sendRedirect("signup.jsp?msg=validMsg");
            
        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
	}	
}
