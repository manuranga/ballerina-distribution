import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string filePath = "./files/sample.txt";
    string[] content = ["The Big Bang Theory", "F.R.I.E.N.D.S", "Game of Thrones", "LOST"];

    // Writes the given array of lines to a file.
    var writeResult = io:fileWriteLines(filePath, content);
    // Check whether the file write operation was successful or not.
    if (writeResult is error) {
        log:printError("Error occurred while performing write ", writeResult);
    } else {
        // If the write operation was successful, then perform a read operation to read the lines as an array.
        var readResult = io:fileReadLines(filePath);
        if (readResult is string[]) {
            io:println(readResult);
        } else {
            log:printError("Error occurred while performing read ", readResult);
        }
    }
}
