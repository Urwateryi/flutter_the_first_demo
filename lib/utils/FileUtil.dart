import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

//enum FlutterSaveLocation {
//  documentFile,
//  sharedPreferences,
//}

class FileUtil {
  String fileName;

  FileUtil(this.fileName);

  // / _getLocalFile函数，获取本地文件目录
  Future<File> _getLocalFile() async {
    // 获取本地文档目录
    String dir = (await getApplicationDocumentsDirectory()).path;
    // 返回本地文件目录
    return new File('$dir/$fileName.txt');
  }

  //往文件中写入数据
  Future<Null> writeContent(String content) async {
    // 将存储点击数的变量作为字符串写入文件
    await (await _getLocalFile()).writeAsString('$content');
  }

  //读取存储中的数据
  Future<String> _readCounter() async {
    try {
      /*
       * 获取本地文件目录
       * 关键字await表示等待操作完成
       */
      File file = await _getLocalFile();
      // 使用给定的编码将整个文件内容读取为字符串
      String  contents = await file.readAsString();
      return contents;
    } on FileSystemException {
      // 发生异常时返回默认值
      return "error:";
    }
  }
}
