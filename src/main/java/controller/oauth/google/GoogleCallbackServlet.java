package controller.oauth.google;

import java.io.IOException;
import java.util.Collections;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.api.client.auth.oauth2.TokenResponseException;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeTokenRequest;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

import dao.AuthUser;
import utility.VerifyExisting;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;

@WebServlet("/callback")
public class GoogleCallbackServlet extends HttpServlet {
private static ResourceBundle bundle = ResourceBundle.getBundle("credentials");
    
    private static final String CLIENT_ID = bundle.getString("GOOGLE_AUTH.CLIENT_ID");
    private static final String CLIENT_SECRET = bundle.getString("GOOGLE_AUTH.CLIENT_SECRET");
    private static final String REDIRECT_URI = "http://localhost:8080/callback";

    private static final HttpTransport TRANSPORT = new NetHttpTransport();
    private static final JsonFactory JSON_FACTORY = new JacksonFactory();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");

        try {
            GoogleTokenResponse tokenResponse = new GoogleAuthorizationCodeTokenRequest(
                TRANSPORT, JSON_FACTORY, CLIENT_ID, CLIENT_SECRET, code, REDIRECT_URI)
                .execute();

            GoogleIdToken idToken = tokenResponse.parseIdToken();
            Payload payload = idToken.getPayload();
            String userId = payload.getSubject(); 
            String email = payload.getEmail();
            String username = (String) payload.get("name");
            

            HttpSession session = request.getSession();
            AuthUser authUserObject = new AuthUser(username,userId,email);
            session.setAttribute("OQjklmPn24_HealthLink", authUserObject);

            if (!VerifyExisting.existsUser(email,userId)) {
            	response.sendRedirect("select-your-role.jsp");
            }
            response.sendRedirect("/secure-page");
        } catch (TokenResponseException e) {
            response.getWriter().println("Token response exception: " + e.getMessage());
        } catch (Exception e) {
            response.getWriter().println("Authorization code token request exception: " + e.getMessage());
        }
    }
}
