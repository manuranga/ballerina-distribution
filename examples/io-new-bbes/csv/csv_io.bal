import ballerina/io;
import ballerina/log;

public function main() returns error? {
    string filePath = "./files/sample.csv";
    string[][] content = [["1", "James", "10000"], ["2", "Nathan", "150000"], ["3", "Ronald", "120000"], ["4", "Roy", 
    "6000"], ["5", "Oliver", "1100000"]];

    // Writes the given content string[][] to a CSV file.
    var writeResult = io:fileWriteCsv(filePath, content);
    // Check whether the file write operation was successful or not.
    if (writeResult is error) {
        log:printError("Error occurred while performing write ", writeResult);
    } else {
        // If the write operation was successful, then perform a read operation to read the CSV content as
        // a string array of arrays.
        var readResult = io:fileReadCsv(filePath);
        if (readResult is string[][]) {
            io:println(readResult);
        } else {
            log:printError("Error occurred while performing read ", readResult);
        }
    }
}
