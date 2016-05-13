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
#ifndef COMMON_SOCKET_H
#define COMMON_SOCKET_H

#include "socket_define.h"  
#include "socket_exception.h"  
#include "address.h" 

using namespace std;

namespace Socket
{

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

} 

#endif  // COMMON_SOCKET_H

/* vim: set ts=4 sw=4 sts=4 tw=100 */
