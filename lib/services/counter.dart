import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends Cubit<int> {
  Counter() : super(0);
  int counter = 0;
  void increment() => counter++;
  void desincrement() => counter--;
}
