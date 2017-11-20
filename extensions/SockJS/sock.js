// INTERNAL //
var _sock = [];
var _sock_queue = [];

function msgrecv(num) {
    return function(m) {
        _sock_queue[num].push(m.data)
    }
}

// EXPORT //

function sock_open(host) {
    _sock.push(new SockJS(host));
	_sock_queue.push([]);
    var _refnum = _sock.length - 1;
    _sock[_refnum].onmessage = msgrecv(_refnum);
	return _refnum;
}

function sock_send(sock, msg) {
    _sock[Math.floor(sock)].send(msg);
    return 0;
}

function sock_hasmessages(sock) {
    return (_sock_queue[Math.floor(sock)].length > 0);
}

function sock_recieve(sock) {
    return _sock_queue[Math.floor(sock)].shift();
}

function sock_status(sock) {
    return _sock[Math.floor(sock)].readyState;
}

function sock_close(sock) {
    return _sock[Math.floor(sock)].close()
}