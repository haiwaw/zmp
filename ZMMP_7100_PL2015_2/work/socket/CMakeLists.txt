
cmake_minimum_required(VERSION 2.8.3)

project(socket)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x -g")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include/)

add_executable(tcp_recv
  examples/tcp_receiver.cpp 
  src/socket_exception.cpp
  src/address.cpp
  src/common_socket.cpp
  src/datagram.cpp
  src/udp.cpp
  src/tcp.cpp
  )

add_executable(tcp_send
  examples/tcp_sender.cpp 
  src/socket_exception.cpp
  src/address.cpp
  src/common_socket.cpp
  src/datagram.cpp
  src/udp.cpp
  src/tcp.cpp
  )

#add_executable(udp_recv
#  examples/udp_receiver.cpp 
#  src/socket_exception.cpp
#  src/address.cpp
#  src/common_socket.cpp
#  src/datagram.cpp
#  src/udp.cpp
#  src/tcp.cpp
#  )

add_executable(udp_send
  examples/udp_sender.cpp 
  src/socket_exception.cpp
  src/address.cpp
  src/common_socket.cpp
  src/datagram.cpp
  src/udp.cpp
  src/tcp.cpp
  )  
