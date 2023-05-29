import socket

def main():
    # create a socket object
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # get local machine name
    host = socket.gethostname()

    # bind the socket to a public host and a well-known port
    server_socket.bind((host, 8080))

    # listen for incoming connections
    server_socket.listen(1)

    print('Server listening on {}:{}'.format(host, 8080))

    while True:
        # wait for a client to connect
        client_socket, addr = server_socket.accept()

        print('Incoming connection from {}:{}'.format(addr[0], addr[1]))

        # send acknowledgement message to client
        message = 'Connection successful!'
        client_socket.send(message.encode())

        # receive message from client
        data = client_socket.recv(1024).decode()
        
        if data:
            print('Received message from client:', data)

            # send acknowledgement back to client
            ack_message = 'Message received!'
            client_socket.send(ack_message.encode())

if __name__ == '__main__':
    main()
