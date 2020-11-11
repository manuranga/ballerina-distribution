import ballerina/io;

public function main() returns @tainted error? {
    string sourcePath = "./files/ballerina.jpeg";
    string destinationPath = "./files/ballerinaCopy.jpeg";

    // Reads the file as a stream of blocks. The default block size is 4KB. Here, the default size is overridden with 2KB.
    stream<io:Block> blockStream = check io:fileReadBlocksAsStream(sourcePath, 2048);
    // If the file reading was successful, then the content will write to the given destination file using the given stream.
    check io:fileWriteBlocksFromStream(destinationPath, blockStream);
    io:println("Successfully copied the image.");
}
