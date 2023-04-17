import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import 'app/ui/pages/counter/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        navigatorObservers: [
          router
              .observer, //esto es para identificar el stack de rutas de nuestro navegador
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterPage());
  }
}
