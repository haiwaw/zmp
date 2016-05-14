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

#include "udp.h"

namespace Socket
{
    UDP::UDP(void) : CommonSocket(SOCK_DGRAM)
    {
    }

    UDP::UDP(const UDP &udp) : CommonSocket()
    {
        this->_socket_id = udp._socket_id;
        this->_opened = udp._opened;
        this->_binded = udp._binded;
    }

    // template <>
    // int UDP::send<string>(Ip ip, Port port, string data)
    // {
    //     return this->send<char>(ip, port, data.c_str(), data.length() + 1);
    // }
    
    // template <>
    // int UDP::send<string>(Address address, string data)
    // {
    //     return this->send<char>(address.ip(), address.port(), data.c_str(), data.length() + 1);
    // }    

    // template <>
    // Datagram<string> UDP::receive<string>(void)
    // {
    //     Datagram<string> ret;
    //     char buffer[SOCKET_MAX_BUFFER_LEN];
        
    //     ret.received_bytes = this->receive<char>(&ret.address, buffer, SOCKET_MAX_BUFFER_LEN, &ret.received_elements);
    //     ret.data = buffer;
        
    //     return ret;
    // }

}