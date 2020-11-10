import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string filePath = "./files/sample.txt";
    string[] content = ["The Big Bang Theory", "F.R.I.E.N.D.S", "Game of Thrones", "LOST"];

    // Writes the given stream of lines to a file.
    var writeResult = io:fileWriteLinesFromStream(filePath, content.toStream());
    // Check whether the file write operation was successful or not.
    if (writeResult is error) {
        log:printError("Error occurred while performing write ", writeResult);
    } else {
        // If the write operation was successful, then perform a read operation to read the lines as a stream.
        var readResult = io:fileReadLinesAsStream(filePath);
        if (readResult is stream<string>) {
            // Loop through the stream and print the content.
            _ = readResult.forEach(function(string val) {
                                       io:println(val);
                                   });
        } else {
            log:printError("Error occurred while performing read ", readResult);
        }
    }
}
