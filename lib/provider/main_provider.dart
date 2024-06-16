import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier {

  bool _isSearchBarVisible = false;

  bool get isSearchBarVisible => _isSearchBarVisible;

  set isSearchBarVisible(bool value) {
    _isSearchBarVisible = value;
    notifyListeners();
  }
}