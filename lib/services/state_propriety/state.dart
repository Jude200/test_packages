import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_app/models/Numberapi.dart';

import '../../injection_container.dart';

class StateProprietyState {
  final IconData icon ;
  final Color color ;
  final Number number ;

  StateProprietyState({
    required this.icon,
    required this.color,
    required this.number,
}) ;
}

StateProprietyState propriety = StateProprietyState(
    icon: FontAwesomeIcons.alipay,
    color: Colors.red,
    number: getIt<Number>()) ;
