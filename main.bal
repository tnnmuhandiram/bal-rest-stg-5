
import ballerina/http;
import ballerina/io;

listener http:Listener httpListener = new (8080);

service / on httpListener {
    resource function get greeting() returns string {

        // update 5 only feature addition
        foreach int i in int:range(0, 5, 2) {
            io:println(i);
        }

        // update 5 only feature addition
        foreach int i in int:range(5, 0, -2) {
            io:println(i);
        }
        return "Hello, World!";
    }
}
