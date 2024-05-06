package controller.oauth.google;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AuthUser;

@WebServlet("/secure-page")
public class ExtractServletFromGoogleAuth extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			if (session.getAttribute("OQjklmPn24_HealthLink") == null) {
				response.sendRedirect("/");
			}
			AuthUser authObject = (AuthUser) session.getAttribute("OQjklmPn24_HealthLink");
			response.getWriter().println(authObject.getEmail());
			response.getWriter().println(authObject.getUsername());

		} catch (Exception e) {
			response.sendRedirect("/");
		}
		
	}
}
