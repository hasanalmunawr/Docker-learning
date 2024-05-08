package main;

public class HelloWorldServer {

    public static void main(String[] args) {
        int port = 8080; // You can change the port number here

        try {
            http.HttpServer server = http.HttpServer.create(new InetSocketAddress(port), 0);
            server.createContext("/", new HelloWorldHandler());
            server.start();
            System.out.println("Server started on port " + port);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

class HelloWorldHandler implements http.HttpHandler {
    @Override
    public void handle(http.HttpExchange exchange) throws IOException {
        String response = "Hello, World!";
        exchange.getResponseHeaders().set("Content-Type", "text/plain");
        exchange.sendResponseHeaders(200, response.length());
        OutputStream os = exchange.getResponseBody();
        os.write(response.getBytes());
        os.close();
    }
}
