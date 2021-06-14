import 'package:flutter/cupertino.dart';
import 'package:syllabuspu/services/firebase_services.dart';

class ImageUrlProvider with ChangeNotifier {

  List<String> urlList = []; //will add all the urls

  getImages(url) {
    this.urlList.add(url);
    notifyListeners();
  }

}
