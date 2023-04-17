import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:meedu_example/app/ui/pages/counter/controller/counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer( //este consumer sirve para hacer los cambios solo en el widget
          builder: (_, ref, __) { 
            final c = ref.watch(counterProvider); //watch ve los cambios y los pasa al text
            return Text(
              "${c.counter}",
              style: TextStyle(fontSize: 30),
            );
          },
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
