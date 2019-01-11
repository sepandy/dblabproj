import PerfectHTTP
import PerfectHTTPServer
import PerfectLib


// Register your own routes and handlers
var routes = Routes()

//routes.add(method: .get, uri: "/") {
//    request, response in
//    response.setHeader(.contentType, value: "text/html")
//    response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!<br><a href=\"http://127.0.0.1:8181/index.html\">main</a></body></html>")
//        .completed()
//}


//(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")

let server = HTTPServer()
server.serverPort = 8080
server.documentRoot = "webroot"

do {
    // Launch the HTTP server.
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
//    fatalError("\(error)") // fatal error launching one of the servers
    print("Network error thrown: \(err) \(msg)")
}

print("Hello, world!")

