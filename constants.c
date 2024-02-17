#include <sys/syscall.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <fcntl.h>

// rdi   rsi   rdx   r10   r8    r9
socket = SYS_socket
bind = SYS_bind
listen = SYS_listen
accept = SYS_accept
read = SYS_read
write = SYS_write
open = SYS_open
af_inet = AF_INET
sock_stream = SOCK_STREAM
o_rdonly = O_RDONLY
