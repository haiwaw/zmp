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
#ifndef DATAGRAM_H
#define DATAGRAM_H

#include "socket_define.h" 
#include "socket_exception.h" 
#include "address.h" 


using namespace std;

namespace Socket
{

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

} 

#endif  // DATAGRAM_H

/* vim: set ts=4 sw=4 sts=4 tw=100 */
