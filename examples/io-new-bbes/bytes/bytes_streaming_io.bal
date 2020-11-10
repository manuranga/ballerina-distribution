import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string sourcePath = "./files/ballerina.jpeg";
    string destinationPath = "./files/ballerinaCopy.jpeg";

    // Reads the file as a stream of blocks. The default block size is 4KB. Here, the default size is overridden with 2KB.
    var readResult = io:fileReadBlocksAsStream(sourcePath, 2048);
    // Validates the error. Check whether the content is a stream or an error.
    if (readResult is stream<byte[]>) {
        // If the file reading was successful, then the content will write to the given destination file using the given stream.
        var writeResult = io:fileWriteBlocksFromStream(destinationPath, readResult);
        // Check whether the file write operation was successful or not.
        if (writeResult is error) {
            log:printError("Error occurred while performing write ", writeResult);
        } else {
            io:println("Successfully copied the image");
            io:println("Source: " + sourcePath);
            io:println("Destination: " + destinationPath);
        }
    } else {
        log:printError("Error occurred while performing read ", readResult);
    }
}
