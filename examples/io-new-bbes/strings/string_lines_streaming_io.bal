import ballerina/io;

public function main() returns @tainted error? {
    string filePath = "./files/sample.txt";
    string[] content = ["The Big Bang Theory", "F.R.I.E.N.D.S", "Game of Thrones", "LOST"];

    // Writes the given stream of lines to a file.
    check io:fileWriteLinesFromStream(filePath, content.toStream());
    // If the write operation was successful, then perform a read operation to read the lines as a stream.
    stream<string> lineStream = check io:fileReadLinesAsStream(filePath);
    // Loop through the stream and print the content.
    _ = lineStream.forEach(function(string val) {
                               io:println(val);
                           });
}
