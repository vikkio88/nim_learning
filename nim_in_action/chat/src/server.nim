import asyncdispatch, asyncnet

const DEFAULT_PORT: int = 7687

type
    Client = ref object
        socket: AsyncSocket
        netAddr: string
        id: int
        connected: bool

    Server = ref object
        socket: AsyncSocket
        clients: seq[Client]

proc newServer(): Server = Server(socket: newAsyncSocket(), clients: @[])

proc loop(server: Server, port: int = DEFAULT_PORT) {.async.} =
    server.socket.bindAddr(port.Port)
    server.socket.listen()
    while true:
        let clientSocket = await server.socket.accept()
        echo "\tconnection accepted"

let server = newServer()
echo "Chat Server started on :" & $DEFAULT_PORT

waitFor loop(server)
