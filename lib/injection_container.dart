import 'package:get_it/get_it.dart';
import 'package:get_it_app/services/Number.dart';
import 'package:get_it_app/services/connectionChecker.dart';
import 'package:get_it_app/services/counter.dart';

GetIt getIt = GetIt.instance;
Future<void> init() async {
  //
  getIt.registerSingleton<Counter>(Counter());
  getIt.registerSingleton<ConnectionChecker>(ConnectionChecker());
}
