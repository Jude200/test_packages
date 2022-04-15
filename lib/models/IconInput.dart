// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconInput {
  IconData m2 ;
  IconData m3 ;
  IconData m5 ;
  IconData m7 ;
  IconData defaultIcon ;

  IconInput({
    required this.m2,
    required this.m3,
    required this.m5,
    required this.m7,
    required this.defaultIcon,
}) ;
}
IconInput iconInput = IconInput(
    m2:   FontAwesomeIcons.alipay,
    m3:   FontAwesomeIcons.alipay,
    m5:   FontAwesomeIcons.alipay,
    m7:   FontAwesomeIcons.alipay,
    defaultIcon:   FontAwesomeIcons.alipay) ;