import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string filePath = "./files/sample.txt";
    string content = "Ballerina is an open source programming language.";

    // Writes the given string to a file.
    var writeResult = io:fileWriteString(filePath, content);
    // Check whether the file write operation was successful or not.
    if (writeResult is error) {
        log:printError("Error occurred while performing write ", writeResult);
    } else {
        // If the write operation was successful, then read the content as a string.
        var readResult = io:fileReadString(filePath);
        if (readResult is string) {
            io:println(readResult);
        } else {
            log:printError("Error occurred while performing read ", readResult);
        }
    }
}
