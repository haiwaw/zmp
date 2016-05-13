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


#include "common_socket.h"

namespace Socket
{


    void CommonSocket::_socket(void)
    {
    }

    CommonSocket::CommonSocket(void)
    {
        this->_socket();
    }

    CommonSocket::CommonSocket(int socket_type)
    {
        this->_socket();

        this->_socket_type = socket_type;
        this->_opened = false;
        this->_binded = false;
        this->open();
    }

    CommonSocket::~CommonSocket(void)
    {
    }

    void CommonSocket::open(void)
    {
        if (!this->_opened)
        {
            if ((this->_socket_id = socket(AF_INET, this->_socket_type, 0)) == -1)
                throw SocketException("[open] Cannot create socket");
            this->_opened = true;
            this->_binded = false;
        }
    }

    void CommonSocket::close(void)
    {
        if (this->_opened)

        shutdown(this->_socket_id, SHUT_RDWR);


        this->_opened = false;
        this->_binded = false;
    }
    
    void CommonSocket::listen_on_port(Port port)
    {
        if (this->_binded) throw SocketException("[listen_on_port] Socket already binded to a port, close the socket before to re-bind");

        if (!this->_opened) this->open();

        Address address(port);

        if (bind(this->_socket_id, (struct sockaddr*)&address, sizeof(struct sockaddr)) == -1)
        {
            stringstream error;
            error << "[listen_on_port] with [port=" << port << "] Cannot bind socket";
            throw SocketException(error.str());
        }

        this->_binded = true;
    }
}

