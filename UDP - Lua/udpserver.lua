required("socket")

udpp = socket.udp()
udpp:setsockname("*", 1300)
udpp:settimeout()

data,ip,port = udpp:receivefrom()

if data then
	print("Received: ", string.reverse(data), ip, port)

udpp:sendto(data, ip, port)

end
