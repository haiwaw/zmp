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

#include "socket_exception.h"

namespace Socket
{
    SocketException::SocketException(const string &message)
    {
        this->_error = message;
    }

    SocketException::~SocketException() throw()
    {
    }

    const char* SocketException::what() const throw()
    {
        return this->_error.c_str();
    }

    ostream& operator<< (ostream &out, SocketException &e)
    {
        out << e.what();
        return out;
    }
}

