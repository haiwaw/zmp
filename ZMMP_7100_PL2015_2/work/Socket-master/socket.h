/***************************************************************************
 * 
 * Copyright (c) 2016 Advinno, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 /**
 * @file 
 * @author haifeng(haifeng@advinno.com)
 * @date 2016/05/12 20:16:04
 * @version $Revision$ 
 * @brief 
 *  
 **/

#ifndef _SOCKET_H_

#define _SOCKET_H_

#include <iostream>
#include <sstream>
#include <exception>
#include <string>
#include <vector>
#include <fstream>

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>

#define SOCKET_MAX_BUFFER_LEN 1024

using namespace std;

namespace Socket
{
    typedef int SocketId;
    typedef string Ip;
    typedef unsigned int Port;

    
    class SocketException : public exception
    {
    private:
        string _error;
    
    public:
        SocketException(const string&);
        ~SocketException() throw();
	
	    virtual const char* what() const throw();
        friend ostream& operator<< (ostream &out, SocketException &e);
    };

    struct Address : protected sockaddr_in
    {
    private:
        void _address(Ip, Port);

    public:
        Address();
        Address(Port);
        Address(Ip, Port);
        Address(struct sockaddr_in);
        Address(const Address&);

        Ip ip(void);
        Ip ip(Ip);

        Port port(void);
        Port port(Port);

        friend ostream& operator<< (ostream&, Address&);
    };

    template <class DataType>
    struct Datagram
    {
    public:
        Address address;
        DataType data;
        unsigned int received_bytes;
        unsigned int received_elements;

        template <class T>
        void operator= (const Datagram<T>&);
    };

    class CommonSocket
    {
    private:
        void _socket(void);

    protected:
        SocketId _socket_id;
        int _socket_type;
        bool _opened;
        bool _binded;

    public:
        CommonSocket(void);
        CommonSocket(int);

        ~CommonSocket(void);

        void open(void);
        void close(void);
        
        virtual void listen_on_port(Port);
    };

    class UDP : public CommonSocket
    {
    public:
        UDP(void);
        UDP(const UDP&);
        
        template <class T> int send(Ip, Port, const T*, size_t);
        template <class T> int send(Address, const T*, size_t);
        template <class T> int send(Ip, Port, T);
        template <class T> int send(Address, T);
        template <class T> int send(Ip, Port, vector<T>);
        template <class T> int send(Address, vector<T>);
        
        template <class T> int receive(Address*, T*, size_t, unsigned int*);
        template <class T> Datagram<T*> receive(T*, size_t);
        template <class T, size_t N> Datagram<T[N]> receive(size_t);
        template <class T> Datagram<T> receive(void);
        template <class T> Datagram<vector<T> > receive(size_t);
    };

    class TCP : public CommonSocket
    {
    private:
        Address _address;
    public:
        TCP(void);
        TCP(const TCP&);
        
        Ip ip(void);
        Port port(void);
        Address address(void);
        
        void listen_on_port(Port, unsigned int);
        void connect_to(Address);
        
        TCP accept_client(void);
        
        template <class T> int send(const T*, size_t);
        template <class T> int receive(T*, size_t);
        
        void send_file(string);
        void receive_file(string);
    };
}

#include "socket_exception.h"
#include "common_socket.h"
#include "datagram.h"
#include "address.h"
#include "udp.h"
#include "tcp.h"

#endif

