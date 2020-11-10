import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string filePath = "./files/sample.xml";
    xml content = xml `<book>The Lost World</book>`;

    // Writes the given XML to a file.
    var writeResult = io:fileWriteXml(filePath, content);
    // Check whether the file write operation was successful or not.
    if (writeResult is error) {
        log:printError("Error occurred while performing write ", writeResult);
    } else {
        // If the write operation was successful, then perform a read operation to read the XML content.
        var readResult = io:fileReadXml(filePath);
        if (readResult is xml) {
            io:println(readResult);
        } else {
            log:printError("Error occurred while performing read ", readResult);
        }
    }
}
