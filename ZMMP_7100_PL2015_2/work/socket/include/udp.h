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
 
#ifndef UDP_H
#define UDP_H

#include "socket_define.h" 
#include "address.h" 
#include "common_socket.h" 
#include "datagram.h" 
#include "socket_exception.h"   

using namespace std;

namespace Socket
{
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

} 

#endif  // UDP_H

/* vim: set ts=4 sw=4 sts=4 tw=100 */
