import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string sourcePath = "./files/ballerina.jpeg";
    string destinationPath = "./files/ballerinaCopy.jpeg";

    // Reads the file content as a byte array using the given file path.
    var readResult = io:fileReadBytes(sourcePath);
    // Validates the error. Check whether the content is a byte array or an error.
    if (readResult is byte[]) {
        // If the file reading was successful, then the content will write to the given destination file.
        var writeResult = io:fileWriteBytes(destinationPath, readResult);
        // Check whether the file write operation was successful or not.
        if (writeResult is error) {
            log:printError("Error occurred while performing write ", writeResult);
        } else {
            io:println("Successfully copied the image.");
            io:println("Source: " + sourcePath);
            io:println("Destination: " + destinationPath);
        }
    } else {
        log:printError("Error occurred while performing read ", readResult);
    }
}
