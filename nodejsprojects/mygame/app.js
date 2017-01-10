// 1. require express module

var express = require('express');

//2. call create app from the exported module
var app = express();

var serv = require('http').Server(app);

// 3. Use main route for sending file for a request from main route
app.get('/', function(req, res){
	res.sendFile(__dirname + '/client/index.html');
});

 // 4. Use folder client, make it static
app.use('/client', express.static(__dirname + '/client'));

// 5. give port # to the server for listening 
serv.listen(2000);


// 7. socket array for client-client interaction
var SOCKET_LIST = {};


// 6. initialise socket io
var io = require('socket.io')(serv,{});
io.sockets.on('connection', function(socket){
	// 8
	socket.id = Math.random();

	//9
	socket.x=0;
	socket.y=0;
	socket.number = "" + Math.floor(10 * Math.random());

	SOCKET_LIST[socket.id] = socket;

	socket.on('disconnect', function(){
		delete SOCKET_LIST[socket.id]
	});

});

setInterval(function(){
	var pack = [];

	for(var i in SOCKET_LIST){		
		var socket = SOCKET_LIST[i];
		socket.x++;
		socket.y++;	

		pack.push({
			x:socket.x,
			y:socket.y,
			number:socket.number
		});	
	}

	for(var i in SOCKET_LIST){
		var socket = SOCKET_LIST[i];
		socket.emit('newPosition',pack);
	}


}, 1000/25);
