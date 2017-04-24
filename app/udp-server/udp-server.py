import os
import SocketServer


class MyUDPHandler(SocketServer.BaseRequestHandler):
    def handle(self):
        self.request[1].sendto("hello udp", self.client_address)


print "Listening UDP..."
IP = "0.0.0.0"
PORT = int(os.environ['PORT'])
SocketServer.UDPServer(("0.0.0.0", PORT), MyUDPHandler).serve_forever()
