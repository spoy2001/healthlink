<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Video Call</title>
    <!-- Include PeerJS library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/peerjs/1.3.1/peerjs.min.js"></script>
</head>
<body>
    <h1>Video Call</h1>
    <div id="localVideo"></div>
    <div id="remoteVideo"></div>
    
    <script>
        // Initialize PeerJS client
        const peer = new Peer({
            host: 'your_peerjs_host', // Replace with your PeerJS server host
            port: 'your_peerjs_port', // Replace with your PeerJS server port
            path: '/peerjs', // Path to PeerJS server
            debug: 3 // Set debug level
        });

        // Handle PeerJS events
        peer.on('open', function(id) {
            console.log('My peer ID is: ' + id);
            // Code to handle peer open event
        });

        peer.on('error', function(err) {
            console.error('PeerJS error:', err);
            // Code to handle peer error event
        });

        peer.on('call', function(call) {
            console.log('Incoming call:', call);
            // Answer incoming call
            answerCall(call);
        });

        // Function to handle making a call
        function makeCall() {
            // Get remote peer ID from user input (assume input field with id 'remotePeerId')
            const remotePeerId = document.getElementById('remotePeerId').value;
            // Get local media stream
            navigator.mediaDevices.getUserMedia({ video: true, audio: true })
                .then(function(stream) {
                    // Display local video stream
                    const localVideo = document.getElementById('localVideo');
                    localVideo.srcObject = stream;
                    localVideo.play();
                    // Make a call to remote peer
                    const call = peer.call(remotePeerId, stream);
                    // Answer the call
                    answerCall(call);
                })
                .catch(function(err) {
                    console.error('Error accessing media devices:', err);
                });
        }

        // Function to handle answering a call
        function answerCall(call) {
            // Get local media stream
            navigator.mediaDevices.getUserMedia({ video: true, audio: true })
                .then(function(stream) {
                    // Display local video stream
                    const localVideo = document.getElementById('localVideo');
                    localVideo.srcObject = stream;
                    localVideo.play();
                    // Answer the call with local media stream
                    call.answer(stream);
                    // Stream remote video
                    call.on('stream', function(remoteStream) {
                        const remoteVideo = document.getElementById('remoteVideo');
                        remoteVideo.srcObject = remoteStream;
                        remoteVideo.play();
                    });
                })
                .catch(function(err) {
                    console.error('Error accessing media devices:', err);
                });
        }
    </script>
    
    <!-- Input field for entering remote peer ID -->
    <input type="text" id="remotePeerId" placeholder="Enter remote peer ID">
    <!-- Button to initiate call -->
    <button onclick="makeCall()">Call</button>
</body>
</html>
