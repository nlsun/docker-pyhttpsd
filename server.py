#!/usr/bin/env python3

from http.server import HTTPServer, BaseHTTPRequestHandler, SimpleHTTPRequestHandler
import ssl
import sys

port = 443

if len(sys.argv) >= 2:
    port = int(sys.argv[1])

httpd = HTTPServer(('0.0.0.0', port), SimpleHTTPRequestHandler)

httpd.socket = ssl.wrap_socket (httpd.socket, certfile='server.pem', server_side=True)

httpd.serve_forever()
