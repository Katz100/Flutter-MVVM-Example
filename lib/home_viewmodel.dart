import 'package:flutter/cupertino.dart';

class HomeViewmodel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  final String _title = "Example Viewmodel";
  String get title => _title;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}