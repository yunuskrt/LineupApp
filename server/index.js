const express = require('express')
const http = require('http')

const app = express()
const port = process.env.PORT || 3000
var server = http.createServer(app)

const { createRoom } = require('./controllers/listener')

var io = require('socket.io')(server)

// client -> middleware -> server
// middleware
app.use(express.json())

io.on('connection', (socket) => {
	socket.on('createRoom', ({ nickname }) => {
		createRoom(nickname)
		socket.emit('hello', 'message from server')
	})
})

server.listen(port, '0.0.0.0', () => {
	console.log(`Server started and running on port ${port}`)
})
