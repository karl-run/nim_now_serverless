import asynchttpserver, asyncdispatch, json

var server = newAsyncHttpServer()
proc cb(req: Request) {.async.} =
  let headers = newHttpHeaders([("Content-Type","application/json")])
  if req.url.path == "/secret":
    let msg = %* {"message": "Welcome to the secret"}
    await req.respond(Http200, $msg, headers)
  else:
    let msg = %* {"message": "Hello path: " & req.url.path}
    await req.respond(Http200, $msg, headers)

waitFor server.serve(Port(5000), cb)
