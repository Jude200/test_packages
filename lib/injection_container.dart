import 'package:get_it/get_it.dart';
import 'package:get_it_app/counter.dart';

GetIt getIt = GetIt.instance;
void init() {
  getIt.registerSingleton<Counter>(Counter());
}
