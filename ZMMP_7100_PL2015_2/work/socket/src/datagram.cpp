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

#include "datagram.h"

namespace Socket
{
    template <class DataType>
    template <class T>
    void Datagram<DataType>::operator= (const Datagram<T> &datagram)
    {
        this->address = datagram.address;
        this->data = datagram.data;
    }
}
