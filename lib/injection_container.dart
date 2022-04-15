import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_app/models/ColorInput.dart';
import 'package:get_it_app/models/IconInput.dart';
import 'package:get_it_app/models/Numberapi.dart';
import 'package:get_it_app/services/core.dart';
import 'package:get_it_app/services/connection/state.dart';
import 'package:get_it_app/services/connectionChecker.dart';
import 'package:get_it_app/services/counter.dart';
import 'package:get_it_app/services/counter/state.dart';
import 'package:get_it_app/services/dioHelper.dart';

GetIt getIt = GetIt.instance;
Future<void> init() async {
  //
  getIt.registerSingleton<CounterState>(CounterState()) ;
  getIt.registerSingleton<ConnectionChecker>(ConnectionChecker());
  getIt.registerSingleton<IsConnectionState>(IsConnectionState()) ;
  getIt.registerSingleton<IconInput>(iconInput) ;
  getIt.registerSingleton<ColorInput>(colorInput) ;
  getIt.registerSingleton<DioHelper>(DioHelper()) ;
  getIt.registerSingleton<Number>(Number(text: "", number: "", found: false, type: "")) ;
  getIt.registerSingleton<Core>(Core(icon: FontAwesomeIcons.alipay, color: Colors.red)) ;

}
