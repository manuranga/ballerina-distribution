import ballerina/io;

public function main() returns @tainted error? {
    string filePath = "./files/sample.xml";
    xml content = xml `<book>The Lost World</book>`;

    // Writes the given XML to a file.
    check io:fileWriteXml(filePath, content);
    // If the write operation was successful, then perform a read operation to read the XML content.
    xml readXml = check io:fileReadXml(filePath);
    io:println(readXml);
}
