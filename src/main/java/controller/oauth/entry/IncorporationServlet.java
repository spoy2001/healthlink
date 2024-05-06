package controller.oauth.entry;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AuthUser;

@WebServlet("/register-user")
public class IncorporationServlet extends HttpServlet{
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		 HttpSession session = request.getSession();
		 AuthUser authObject = (AuthUser) session.getAttribute("OQjklmPn24_HealthLink");
		 String entryEmail = authObject.getEmail();
		 response.getWriter().println(entryEmail);
		 
	 }
	
}
