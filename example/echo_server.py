import socket

HOST = 'localhost'  # use your IP address here
PORT = 12345        # use any available port number

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind((HOST, PORT))
    s.listen()
    print('Waiting for a client connection...')
    conn, addr = s.accept()
    print('Connected by', addr)
    
    while True:
        data = conn.recv(1024)
        if not data:
            break
        conn.sendall(data)
        
    print('Client disconnected')

