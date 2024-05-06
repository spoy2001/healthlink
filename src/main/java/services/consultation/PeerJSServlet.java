package services.consultation;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.CloseReason;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@WebServlet("/peerjs")
public class PeerJSServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    static final Map<String, Session> sessions = new HashMap<>();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward WebSocket connection request to WebSocket endpoint
        request.getRequestDispatcher("/peerjs").forward(request, response);
    }
}

@ServerEndpoint("/peerjs")
class PeerJSEndpoint {
    @OnOpen
    public void onOpen(Session session, EndpointConfig config) {
        // Add session to sessions map
        PeerJSServlet.sessions.put(session.getId(), session);
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        // Handle signaling message received from client
        // Implement logic to forward signaling message to the appropriate peer
        // Example: broadcast signaling message to all connected peers
        for (Session peerSession : PeerJSServlet.sessions.values()) {
            try {
                peerSession.getBasicRemote().sendText(message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @OnClose
    public void onClose(Session session, CloseReason reason) {
        // Remove session from sessions map
        PeerJSServlet.sessions.remove(session.getId());
    }

    @OnError
    public void onError(Session session, Throwable throwable) {
        throwable.printStackTrace();
    }
}
