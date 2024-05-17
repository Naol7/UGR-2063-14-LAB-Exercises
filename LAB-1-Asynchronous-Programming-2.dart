import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully to: $savePath');
    } else {
      print('Error downloading file. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading file: $e');
  }
}

void main() async {
  final fileUrl =
      'https://google.com/somefile.txt'; // Replace with your file URL
  final saveFilePath =
      'C:/Downloads/save/somefile.txt'; // Replace with your desired save path

  await downloadFile(fileUrl, saveFilePath);
}
