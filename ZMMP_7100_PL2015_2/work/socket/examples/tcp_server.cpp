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
 
#include "socket.h"

using namespace std;

int main(void)
{
    try
    {
        Socket::TCP server;
        char buffer[Socket::SOCKET_MAX_BUFFER_LEN];
        char * bufptr  = buffer ;
        
        server.listen_on_port(10000);
        Socket::TCP client = server.accept_client();
        
        cout << "receiving ..." << endl;
        client.receive<char>(bufptr,Socket::SOCKET_MAX_BUFFER_LEN);

        cout << bufptr << endl;

    }
    catch (Socket::SocketException &e)
    {
        cout << e << endl;
    }
    
    return 0;
}
