from http.server import BaseHTTPRequestHandler, HTTPServer

class EmployeeHandler(BaseHTTPRequestHandler):

    def do_GET(self):
        if self.path == "/":
            message = "Employee Application is Running!"
        elif self.path == "/health":
            message = "OK"
        else:
            message = "Page Not Found"

        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(message.encode())

server = HTTPServer(("127.0.0.1", 8000), EmployeeHandler)

print("Employee Web Server Started on port 8000", flush=True)

server.serve_forever()
