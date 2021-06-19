import 'package:flutter/cupertino.dart';


class EngNotesProvider with ChangeNotifier {

  late String _name;
  late String _imageUrl;
  late String _author;
  late String _pdfUrl;

  //getters
  String get name => _name;
  String get imageUrl => _imageUrl;
  String get author => _author;
  String get pdfUrl => _pdfUrl;

  //setters
  changeName(String value) {
    _name = value;
    notifyListeners();
  }


}
