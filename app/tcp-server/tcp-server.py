import os
import SocketServer

print "Listening TCP..."
IP = "0.0.0.0"
PORT = int(os.environ['PORT'])
SocketServer.TCPServer(("0.0.0.0", PORT),
                       SocketServer.BaseRequestHandler).serve_forever()
