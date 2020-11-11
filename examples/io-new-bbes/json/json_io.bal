import ballerina/io;

public function main() returns @tainted error? {
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

    // Writes the given JSON to a file.
    check io:fileWriteJson(filePath, content);
    // If the write operation was successful, then perform a read operation to read the JSON content.
    json readJson = check io:fileReadJson(filePath);
    io:println(readJson);
}
