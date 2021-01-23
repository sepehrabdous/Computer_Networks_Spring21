#Assignment 0: Socket Programming

**Due Monday February 8 at 11:59 pm EST**

Socket programming is the standard way to write programs that communicate over a network. While originally developed for Unix computers programmed in C, the socket abstraction is general and not tied to any specific operating system or programming language. This allows programmers to use socket to write correct network programs in many contexts. This assignment will give you experience with basic socket programming. **Using C**, you will write one pair of TCP client and server program for sending and receiving text messages over the Internet. The client and server programs should meet the following specifications. 

##Server Specifications

* Each server program should listen on a socket, wait for a client to connect, receive a message from the client, print the message to stdout, and then wait for the next client indefinitely.

* Each server should take one command-line argument: the port number to listen on for client connections.
* Each server should accept and process client communications in an infinite loop, allowing multiple clients to send messages to the same server. The server should only exit in response to an external signal (e.g. SIGINT from pressing ctrl-c).

* Each server should maintain a short (10) client queue and handle multiple client connection attempts sequentially. In real applications, a TCP server would fork a new process to handle each client connection concurrently, but that is not necessary for this assignment.

* Each server should gracefully handle error values potentially returned by socket programming library functions. Errors related to handling client connections should not cause the server to exit after handling the error; all others should.

* Each server should be able to handle very large messages in both alphanumeric and binary format.

##Client Specifications

* Each client program should contact a server, read a message from stdin, send the message, and exit.
* Each client should read and send the message exactly as it appears in stdin until reaching an EOF (end-of-file).

* Each client should take two command-line arguments: the IP address of the server and the port number of the server.

* Each client must be able to handle arbitrarily large messages by iteratively reading and sending chunks of the message, rather than reading the whole message into memory first.

* Each client should handle partial sends (when a socket only transmits part of the data given in the last send call) by attempting to re-send the rest of the data until it has all been sent.

* Each client should gracefully handle error values potentially returned by socket programming library functions.

## Getting Started

The classic "Beej's Guide to Network Programming" is located here: https://beej.us/guide/bgnet/html/.  The [system call section](https://beej.us/guide/bgnet/html/#system-calls-or-bust) and [client/server example section](https://beej.us/guide/bgnet/html/#client-server-background) will be most relevant. The man pages are also useful for looking up individual functions (e.g. `man socket`).

We have provided scaffolding code in the assignment1/ directory. The files `client.c` and `server.c` contain the scaffolding code. You will need to add socket programming and I/O code. You should read and understand this code before starting to program. For error handling, you can call `perror` for socket programming functions that set the global variable `errno` (Beej's Guide will tell you which do). For those that don't, simply print a message to standard error. The server should be run as `./server [port] > [outputfile]`. The client should be run as `./client [server IP] [server port] <[message file]`.

**Note: DO NOT change the file names, as they will be used for automated testing.**


