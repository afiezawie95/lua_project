require("socket")

MyUDP = socket.udp()
MyUDP:stpeername("127.0.0.1",1300)
MyUDP:settimeout()

io.writer("Please Enter Something : ")
something = io.read()

MYUDP:send(something)

data = MyUDP:receive()

if data then
	print("Receive : ", something)
end
