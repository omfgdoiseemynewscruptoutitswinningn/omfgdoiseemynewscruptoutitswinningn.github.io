
socket = require("socket")
http = require("socket.http")
ltn12 = require("ltn12")

local file = ltn12.sink.file(io.open('test.jpg', 'w'))
http.request {
    url = 'http://pbs.twimg.com/media/CCROQ8vUEAEgFke.jpg',
    sink = file,
}
