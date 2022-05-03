import unittest
import protocol
import json

suite "Protocol Tests":
  test "is parsing correctly if input is correct":
    let message = parseMessage("""{"username": "Mario", "content": "Yo"}""")
    check message.username == "Mario"
    check message.content == "Yo"
  test "expect error if parsing wrong payload":
    expect(JsonParsingError):
      discard parseMessage("some wrong stuff")
  test "it is creating a message json correctly":
    let messageJson = createMessage("Mariano", "Pizza?")
    let message = parseMessage(messageJson)
    check message.username == "Mariano"
    check message.content == "Pizza?"
