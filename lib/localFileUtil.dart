

import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileUtility {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
  Future<File> writeFile(String json) async{
    final file = await _localFile;
    return file.writeAsString(json);
  }
  Future<File> get _localFile async{
    final path = await _localPath;
    return File('$path/counter.txt');
  }
  Future<String> readFile() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      return contents;
    }
    catch (e){
      return "";
    }

  }
}