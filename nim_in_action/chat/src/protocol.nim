import json

type Message* = object
    username*: string
    content*: string

proc parseMessage*(data: string): Message =
    let dataJson = parseJson(data)
    result.username = dataJson["username"].getStr()
    result.content = dataJson["content"].getStr()

proc createMessage*(username, message: string): string =
    result = $(%{
        "username": %username,
        "content": %message,
    }) & "\c\l"
