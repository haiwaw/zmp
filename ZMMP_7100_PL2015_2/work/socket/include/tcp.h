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
#ifndef TCP_H
#define TCP_H

#include "socket_define.h"
#include "address.h"   
#include "common_socket.h" 
#include "socket_exception.h"   

using namespace std;

namespace Socket
{
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
        
        void listen_on_port(Port, unsigned int listeners = 1);
        void connect_to(Address);
        
        TCP accept_client(void);
        
        template <class T> int send(const T*, size_t);
        template <class T> int receive(T*, size_t);
        
        void send_file(string);
        void receive_file(string);
    };

} 

#endif  // TCP_H

/* vim: set ts=4 sw=4 sts=4 tw=100 */
