import 'package:flutter/material.dart';
import 'package:meedu_example/app/ui/pages/counter/controller/counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "0",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.read
              .increment(); // esto es para acceder al valor que nos retorna nuestro provider
        },
      ),
    );
  }
}
