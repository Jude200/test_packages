//ignore_for_file: file_names

import 'package:auto_route/annotations.dart';
import 'package:get_it_app/screens/HomePage.dart';
import 'package:get_it_app/screens/SettingPage.dart';

@AdaptiveAutoRouter(routes: <AutoRoute> [
  AutoRoute(page : MyHomePage, initial:true),
  AutoRoute(page : Setting),
])

class $AppRouter{}