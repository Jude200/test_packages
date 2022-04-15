
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it_app/models/ColorInput.dart';
import 'package:get_it_app/models/IconInput.dart';
import 'package:get_it_app/models/Numberapi.dart';
import 'package:get_it_app/services/constantes.dart';
import 'package:get_it_app/services/counter/state.dart';

import '../injection_container.dart';
import 'connectionChecker.dart';
import 'dioHelper.dart';

class Core {
  IconData icon ;
  Color color ;

  Core({
    required this.icon,
    required this.color,

}) ;
  CounterState counter = getIt.get<CounterState>();
  ColorInput colIn = getIt.get<ColorInput>() ;
  IconInput icoIn = getIt.get<IconInput>() ;
  DioHelper dio = getIt.get<DioHelper>() ;
  ConnectionChecker connection = getIt.get<ConnectionChecker>() ;
  Number num = getIt.get<Number>() ;

  void change() async {

    getInfo() ;

    if (counter.count % 2 == 0) {
      color = colIn.m2 ;
      icon = icoIn.m2 ;
    } else if (counter.count % 3 == 0) {
      color = colIn.m3 ;
      icon = icoIn.m3 ;
    } else if (counter.count % 5 == 0) {
      color = colIn.m5 ;
      icon = icoIn.m5 ;
    } else if (counter.count % 7 == 0) {
      color = colIn.m7 ;
      icon = icoIn.m7 ;
    } else {
      color = colIn.m2 ;
      icon = icoIn.m2 ;
    }
  }

  void getInfo() async {
    String url = url_numberApi(counter.count.toString()) ;
    Response<Map<String, dynamic>>? numberInfoResponse = await dio.getNumberInfo(url) ;
    Map<String, dynamic>? numberInfoMap = numberInfoResponse?.data ;
    num = Number.fromJson(numberInfoMap!) ;
  }
}