import vibe.d;
import std.file;

void handleRequest(HTTPServerRequest req, HTTPServerResponse res)
{
    // Basic routing
    if (req.path == "/") {
        res.writeBody("Welcome to the D Simple Web Server!", "text/html");
    } else if (req.path == "/hello") {
        res.writeBody("Hello, World!", "text/html");
    } else {
        res.writeBody("404 Not Found", "text/html");
        res.statusCode = 404;
    }
}

void main()
{
    auto settings = new HTTPServerSettings;
    settings.port = 8080;

    auto router = new URLRouter;

    // Route for dynamic content
    router.get("/", &handleRequest);
    router.get("/hello", &handleRequest);

    listenHTTP(settings, router);

    logInfo("Server started on http://127.0.0.1:8080/");
    runApplication();
}
