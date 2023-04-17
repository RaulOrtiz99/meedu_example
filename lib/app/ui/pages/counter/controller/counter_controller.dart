import 'package:flutter_meedu/meedu.dart';

class CounterController extends SimpleNotifier {
  int counter = 0;

  CounterController() {
    print("EMOJII");
  }

  void increment() {
    counter++;
    notify(); // con nofity podemos notificar a las partes involucradas del cambio de estado
  }
}
