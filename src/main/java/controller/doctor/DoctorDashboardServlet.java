package controller.doctor;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/")
public class DoctorDashboardServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // Forward the request to the doctor dashboard JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("doctorDashboard.jsp");
        dispatcher.forward(request, response);
    }
}

