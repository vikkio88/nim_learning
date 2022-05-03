import os, threadpool

echo "Chat app started..."

if paramCount() == 0:
    quit("Error: Please specify address as parameter")

let serverAddr = paramStr(1)
echo "Connecting to " & serverAddr & "..."

const EXIT_CMD = ">q"
echo "---------"
echo "'>q' to exit"
var message = spawn stdin.readLine()
while ^message != EXIT_CMD:
    if ^message != "":
        echo "Sending message " & ^message
    echo "stuff1"
    message = spawn stdin.readLine()
    echo "stuff2"

echo "\n\n...quit received, kthx-bye uwu\n\n"
