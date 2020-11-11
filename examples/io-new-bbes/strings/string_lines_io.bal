import ballerina/io;

public function main() returns @tainted error? {
    string filePath = "./files/sample.txt";
    string[] content = ["The Big Bang Theory", "F.R.I.E.N.D.S", "Game of Thrones", "LOST"];

    // Writes the given array of lines to a file.
    check io:fileWriteLines(filePath, content);
    // If the write operation was successful, then perform a read operation to read the lines as an array.
    string[] lines = check io:fileReadLines(filePath);
    io:println(lines);
}
