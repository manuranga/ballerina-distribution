import ballerina/io;

public function main() returns @tainted error? {
    string filePath = "./files/sample.csv";
    string[][] content = [["1", "James", "10000"], ["2", "Nathan", "150000"], ["3", "Ronald", "120000"], ["4", "Roy", 
    "6000"], ["5", "Oliver", "1100000"]];

    // Writes the given content string[][] to a CSV file.
    check io:fileWriteCsv(filePath, content);
    // If the write operation was successful, then perform a read operation to read the CSV content as a string array of arrays.
    string[][] readContent = check io:fileReadCsv(filePath);
    io:println(readContent);
}
