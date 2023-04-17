import 'package:flutter_meedu/meedu.dart';
import 'package:meedu_example/app/ui/pages/counter/controller/counter_controller.dart';

final counterProvider = SimpleProvider(
  (_) => CounterController(),
);
