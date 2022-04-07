// ignore_for_file: file_names

import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectionChecker {
  Future<bool> isConnected() async {
    return await InternetConnectionChecker().hasConnection;
  }
}
