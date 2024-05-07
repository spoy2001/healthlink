package controller.doctor;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PrintPrescriptionServlet")
public class PrintPrescriptionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve prescription information from request attributes
        String date = request.getParameter("date");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String symptoms = request.getParameter("symptoms");
        String adviceCure = request.getParameter("adviceCure");
        String medicines = request.getParameter("medicines");
        String doctorFirstName = request.getParameter("doctorFirstName");
        String doctorLastName = request.getParameter("doctorLastName");


        // Set prescription information as request attributes
        request.setAttribute("date", date);
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("symptoms", symptoms);
        request.setAttribute("adviceCure", adviceCure);
        request.setAttribute("medicines", medicines);
        request.setAttribute("doctorFirstName", doctorFirstName);
        request.setAttribute("doctorLastName", doctorLastName);

        // Forward the request to the printPrescription.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("printPrescription.jsp");
        dispatcher.forward(request, response);
    }
}
