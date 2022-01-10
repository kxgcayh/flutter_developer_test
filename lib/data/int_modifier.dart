import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final integerModifier = ChangeNotifierProvider((_) => IntegerModifier());

class IntegerModifier extends ChangeNotifier {
  List<String> result = [];

  void task1(String nValue) {
    result.clear();
    for (var i = 0; i < int.parse(nValue); i++) {
      final res = (i + 1).toString();
      result.add(res);
    }
    notifyListeners();
  }

  void task2(String nValue) {
    final intVal = int.parse(nValue);
    result.clear();
    for (var i = 0; i < intVal; i++) {
      final res = (i + 1).toString();
      result.add(res);
      if (result.contains(nValue)) {
        for (var x = intVal - 1; x >= 1; x--) {
          result.add(x.toString());
        }
      }
    }
    notifyListeners();
  }

  void task3(String nValue) {
    result.clear();
    int temp = 0;
    for (var i = 0; i < int.parse(nValue); i++) {
      if (i == 0) {
        temp = (int.parse(nValue) * 2);
        result.add(temp.toString());
      } else {
        temp = temp + 11;
        result.add(temp.toString());
      }
    }
    notifyListeners();
  }

  void task4(String nValue) {
    result.clear();
    for (var i = 0; i < int.parse(nValue); i++) {
      if (i / 5 == 1) {
        result.add('LIMA');
      } else if (i / 7 == 1) {
        result.add('TUJUH');
      } else {
        result.add((i + 1).toString());
      }
    }
    notifyListeners();
  }
}
