package controller.doctor;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PrescriptionServlet")
public class PrescriptionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to the PrintPrescriptionServlet
        printPres(request,response);

    }
    public void printPres(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(request.getContextPath() + "/printPrescription?date=" + request.getParameter("date")
                + "&firstName=" + request.getParameter("firstName")
                + "&lastName=" + request.getParameter("lastName")
                + "&symptoms=" + request.getParameter("symptoms")
                + "&adviceCure=" + request.getParameter("adviceCure")
                + "&medicines=" + request.getParameter("medicines")
                + "&doctorFirstName=" + request.getParameter("doctorFirstName")
                + "&doctorLastName=" + request.getParameter("doctorLastName"));

        dispatcher.forward(request, response);
    }
}
