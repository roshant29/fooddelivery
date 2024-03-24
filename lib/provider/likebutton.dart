import 'package:flutter/material.dart';

class LikeProvider with ChangeNotifier {
  final List<int> _likes = [];
  List<int> get likes => _likes;
  void toggleLike(int id) {
    if (likes.contains(id)) {
      likes.remove(id);
    } else {
      likes.add(id);
    }
    notifyListeners();
  }
}
