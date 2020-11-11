import ballerina/io;

public function main() returns @tainted error? {
    string filePath = "./files/sample.txt";
    string content = "Ballerina is an open source programming language.";

    // Writes the given string to a file.
    check io:fileWriteString(filePath, content);
    // If the write operation was successful, then read the content as a string.
    string readContent = check io:fileReadString(filePath);
    io:println(readContent);
}
