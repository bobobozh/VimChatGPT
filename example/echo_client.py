import socket

def main():
    # create a socket object
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # get local machine name and port number of server
    host = socket.gethostname()
    port = 8080

    try:
        # connect to the server
        client_socket.connect((host, port))

        print('Connected to {}:{}'.format(host, port))

        # send message to server
        message = 'Hello, server!'
        client_socket.send(message.encode())

        # receive acknowledgement from server
        data = client_socket.recv(1024).decode()

        if data:
            print('Received acknowledgement from server:', data)

    except Exception as e:
        print('Error:', e)

    finally:
        # close the socket
        client_socket.close()

if __name__ == '__main__':
    main()
