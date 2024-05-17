import 'dart:io';

void main() {
  // Path to the file to be read
  String filePath = 'path/to/file.txt';

  try {
    // Read the file
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();

    // Print the contents of the file
    print('File contents:');
    for (String line in lines) {
      print(line);
    }
  } catch (e) {
    if (e is FileSystemException) {
      if (e.osError?.errorCode == FileSystemException.notFoundErrorCode) {
        print('Error: File not found at path: $filePath');
      } else {
        print('Error occurred while reading the file: $e');
      }
    } else {
      print('An error occurred: $e');
    }
  }
}
