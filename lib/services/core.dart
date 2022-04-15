
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it_app/models/ColorInput.dart';
import 'package:get_it_app/models/IconInput.dart';
import 'package:get_it_app/models/Numberapi.dart';
import 'package:get_it_app/services/constantes.dart';
import 'package:get_it_app/services/counter.dart';

import '../injection_container.dart';
import 'connectionChecker.dart';
import 'dioHelper.dart';

class Chargement {
  IconData icon ;
  Color color ;

  Chargement({
    required this.icon,
    required this.color,

}) ;
  Counter counter = getIt.get<Counter>();
  ColorInput colIn = getIt.get<ColorInput>() ;
  IconInput IcoIn = getIt.get<IconInput>() ;
  DioHelper dio = getIt.get<DioHelper>() ;
  ConnectionChecker connection = getIt.get<ConnectionChecker>() ;
  Number num = getIt.get<Number>() ;

  void change() async {
    bool isConnected = await connection.isConnected() ;
    isConnected ?
      getInfo() :
      num.text = "Veillez vous connecter a Internet" ;

    if (counter.counter % 2 == 0) {
      color = colIn.m2 ;
      icon = IcoIn.m2 ;
    } else if (counter.counter % 3 == 0) {
      color = colIn.m3 ;
      icon = IcoIn.m3 ;
    } else if (counter.counter % 5 == 0) {
      color = colIn.m5 ;
      icon = IcoIn.m5 ;
    } else if (counter.counter % 7 == 0) {
      color = colIn.m7 ;
      icon = IcoIn.m7 ;
    } else {
      color = colIn.m2 ;
      icon = IcoIn.m2 ;
    }
  }

  void getInfo() async {
    String url = url_numberApi(counter.counter.toString()) ;
    Response<Map<String, dynamic>>? numberInfoResponse = await dio.getNumberInfo(url) ;
    Map<String, dynamic>? numberInfoMap = numberInfoResponse?.data ;
    num.text = numberInfoMap?['text'];
    Number number = Number.fromMap(numberInfoMap!) ;
    num = number ;
  }
}