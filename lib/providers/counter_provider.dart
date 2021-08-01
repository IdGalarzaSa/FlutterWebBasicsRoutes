import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  CounterProvider(String base) {
    if (int.tryParse(base) != null) {
      this._counter = int.parse(base);
    }
  }

  get counter => this._counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
