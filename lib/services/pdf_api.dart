import 'dart:async';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'dart:io';

import 'package:syllabuspu/services/firebase_services.dart';

class PDFApi {
  FirebaseServices _services = FirebaseServices();

  Future<File?> loadFirebase(String url) async {
    try {
      final refPDF = _services.syllabus.get();
      final bytes = await refPDF.getData();
      return _storeFile(url, bytes!);
    } catch (e) {
      return null;
    }
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}
