load "libuv.ring"

? "Testing RingLibuv - Server Side"

DEFAULT_PORT    = 80
DEFAULT_BACKLOG = 1024

addr    = new_sockaddr_in()
server  = NULL
client  = NULL
myloop  = NULL

func main
        myloop = uv_default_loop()
        server = new_uv_tcp_t()
        uv_tcp_init(myloop, server)
        uv_ip4_addr("127.0.0.1", DEFAULT_PORT, addr)
        uv_tcp_bind(server, addr, 0)
        r = uv_listen(server, DEFAULT_BACKLOG, "newconnection()")
        if r
                ? "Listen error " + uv_strerror(r)
                return 1
        ok
	? "before main loop"
        uv_run(myloop, UV_RUN_DEFAULT)
	? "After main loop"
        destroy_uv_tcp_t(server)
        destroy_uv_sockaddr_in(addr)
	? "end of code!"

func newconnection
        ? "New Connection"
        aPara   = uv_Eventpara(server,:connect)
        nStatus = aPara[2]
        if nStatus < 0
                ? "New connection error : " + nStatus
                return
        ok
        client = new_uv_tcp_t()
        uv_tcp_init(myloop, client)
        if uv_accept(server, client) = 0
                        uv_read_start(client, uv_myalloccallback(), "echo_read()")
        ok

func echo_read
        aPara = uv_Eventpara(client,:read)
        nRead = aPara[2]
        buf   = aPara[3]
        if nRead > 0
                req = new_uv_write_t()
                wrbuf = uv_buf_init(get_uv_buf_t_base(buf), nread)
                //uv_write(req, client, wrbuf, 1, "echo_write()")
                ? uv_buf2str(wrbuf)

		cResponse = "HTTP/1.1 200 OK\r\n" +
               	"Content-Type: text/html\r\n\r\n" +
               	"<html><head><title>Goodbye, world!</title></head>" +
               	"<body>Goodbye, world!</body></html>"
		cResponse = substr(cResponse,"\r\n",char(13)+char(10))
		message = cResponse

                buf = new_uv_buf_t()
                set_uv_buf_t_len(buf,len(message))
                set_uv_buf_t_base(buf,varptr("message","char *"))
                uv_write(req, client, buf, 1, "echo_write()")
		
		# Workaround - we must call uv_write() twice or the event loop will exit!
		# 		And we must use the same (req)
		message = " test "
                buf = new_uv_buf_t()
                set_uv_buf_t_len(buf,len(message))
                set_uv_buf_t_base(buf,varptr("message","char *"))
		uv_write(req, client, buf, 1, "echo_write()")
        ok

func echo_write
        aPara = uv_Eventpara(client,:read)
        req   = aPara[1]
	? uv_close(req,"close_socket()")
	? "echo write!"

func close_socket
	? "close socket"