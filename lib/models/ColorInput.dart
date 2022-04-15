// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorInput {
  Color m2 ;
  Color m3 ;
  Color m5 ;
  Color m7 ;
  Color defaultColor ;

  ColorInput({
    required this.m2,
    required this.m3,
    required this.m5,
    required this.m7,
    required this.defaultColor,
  }) ;
}
ColorInput colorInput = ColorInput(
    m2: Colors.red,
    m3: Colors.red,
    m5: Colors.red,
    m7: Colors.red,
    defaultColor: Colors.red
) ;