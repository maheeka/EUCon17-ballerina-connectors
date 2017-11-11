import ballerina.net.http;

@http:configuration {basePath:"/echo"}
service<http> echo {

    @http:resourceConfig {
        methods:["POST"],
        path:"/message"
    }
    resource echoMessage (http:Request req, http:Response resp) {
        string payload = req.getStringPayload();
        resp.setStringPayload(payload);
        resp.send();
    }
}
