import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string filePath = "./files/sample.json";
    json content = {"Store": {
            "@id": "AST",
            "name": "Anne",
            "address": {
                "street": "Main",
                "city": "94"
            },
            "codes": ["4", "8"]
        }};

    var writeResult = io:fileWriteJson(filePath, content);
    if (writeResult is error) {
        log:printError("Error occurred while performing write ", writeResult);
    } else {
        var readResult = io:fileReadJson(filePath);
        if (readResult is json) {
            io:println(readResult);
        } else {
            log:printError("Error occurred while performing read ", readResult);
        }
    }
}
