import ballerina/io;

public function main() returns @tainted error? {
    string sourcePath = "./files/ballerina.jpeg";
    string destinationPath = "./files/ballerinaCopy.jpeg";

    // Reads the file content as a byte array using the given file path.
    byte[] bytes = check io:fileReadBytes(sourcePath);
    // The content that already read, will write to the given destination file.
    check io:fileWriteBytes(destinationPath, bytes);
    io:println("Successfully copied the image.");
}
