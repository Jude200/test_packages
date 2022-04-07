// ignore_for_file: file_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_app/injection_container.dart';
import 'package:get_it_app/services/counter.dart';

class NumberSelect extends Cubit<int> {
  NumberSelect() : super(0);
  int numberCount = getIt<Counter>().counter;
  int index = 0;

  int indexing() {
    if (numberCount % 2 == 0) {
      index = 1;
    } else if (numberCount % 3 == 0) {
      index = 2;
    } else if (numberCount % 5 == 0) {
      index = 3;
    } else if (numberCount % 5 == 0) {
      index = 4;
    }
    return index;
  }
}
