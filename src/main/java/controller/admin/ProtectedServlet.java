package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/protected")
public class ProtectedServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("userId") != null) {
            // User is authenticated, continue processing the request
            // You can access user information from the session
            String userId = (String) session.getAttribute("userId");
            String email = (String) session.getAttribute("email");
            // Process the request accordingly
            response.getWriter().println("User ID: " + userId);
            response.getWriter().println("Email: " + email);
        } else {
            // User is not authenticated, redirect to login page or send unauthorized response
            response.sendRedirect("/login");
        }
    }
}
