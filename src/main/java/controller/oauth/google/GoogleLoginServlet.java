package controller.oauth.google;

import java.io.IOException;
import java.util.Collections;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl;
import com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.auth.oauth2.TokenResponseException;
import com.google.api.client.extensions.servlet.auth.oauth2.AbstractAuthorizationCodeServlet;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeRequestUrl;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

@WebServlet("/google-login")
public class GoogleLoginServlet extends HttpServlet {
	
    private static ResourceBundle bundle = ResourceBundle.getBundle("credentials");
    
    private static final String CLIENT_ID = bundle.getString("GOOGLE_AUTH.CLIENT_ID");
    private static final String CLIENT_SECRET = bundle.getString("GOOGLE_AUTH.CLIENT_SECRET");
    private static final String REDIRECT_URI = "http://localhost:8080/callback";
    private static final String SCOPE = "email profile";

    private static final HttpTransport TRANSPORT = new NetHttpTransport();
    private static final JsonFactory JSON_FACTORY = new JacksonFactory();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
            TRANSPORT, JSON_FACTORY, CLIENT_ID, CLIENT_SECRET, Collections.singleton(SCOPE))
            .setAccessType("offline")
            .build();

        String url = flow.newAuthorizationUrl()
            .setRedirectUri(REDIRECT_URI)
            .build();

        response.sendRedirect(url);
    }
}
