import 'dart:math';

import 'package:flutter/cupertino.dart';

class HomeViewmodel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  final String _title = "Example Viewmodel";
  String get title => _title;

  final List<int> _entries = [1];
  List<int> get entries => _entries;

  var rng = Random();

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void addItemToList() {
    _entries.add(rng.nextInt(99) + 1);
    notifyListeners();
  }
}