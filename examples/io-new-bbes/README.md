# New I/O BBE Design

## Bytes I/O
- Read and write bytes as a whole.
    - `io:fileReadBytes(filePath)`
    - `io:fileWriteBytes(filePath, content)`
- Read and write bytes using streams.
    - `io:fileReadBlocksAsStream(filePath, blockSize)`
    - `io:fileWriteBlocksFromStream(filePath, byteStream)`

## Strings I/O
- Read and write file content as a string.
    - `io:fileReadString(filePath)`
    - `io:fileWriteString(filePath, content)`
- Read and write lines.
    - `io:fileReadLines(filePath)`
    - `io:fileWriteLines(filePath, lines)`
- Read and write lines using streams.
    - `io:fileReadLinesAsStream(filePath)`
    - `io:fileWriteLinesFromStream(filePath, lineStream)`

## JSON I/O
- Read and write JSON content.
    - `io:fileReadJson(filePath)`
    - `io:fileWriteJson(filePath, jsonContent)`

## XML I/O
- Read and write XML content.
    - `io:fileReadXml(filePath)`
    - `io:fileWriteXml(filePath, xmlContent)`

## CSV I/O
- Read and write CSV content as a whole.
    - `io:fileReadCsv(filePath)`
    - `io:fileWriteCsv(filePath, csvContent)`
- Read and write CSV content using streams.
    - `io:fileReadCsvAsStream(filePath)`
    - `io:fileWriteCsvFromStream(filePath, csvStream)`
