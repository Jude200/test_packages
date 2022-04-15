// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get_it_app/injection_container.dart';
import 'package:get_it_app/models/ColorInput.dart';
import 'package:get_it_app/models/IconInput.dart';
import 'package:get_it_app/services/constantes.dart';

class Setting extends StatefulWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}
int index = -1 ;

IconData dropIcon2 = iconList[0] ;
IconData dropIcon3 = iconList[0] ;
IconData dropIcon5 = iconList[0] ;
IconData dropIcon7 = iconList[0] ;

Color dropColor2 = colorList[0] ;
Color dropColor3 = colorList[0] ;
Color dropColor5 = colorList[0] ;
Color dropColor7 = colorList[0] ;

ColorInput color = getIt.get<ColorInput>() ;
IconInput icon = getIt.get<IconInput>() ;

class _SettingState extends State<Setting> {
  void update() {setState(() {});}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers : [
          const SliverAppBar(
            title: Text("Setting Page"),
            backgroundColor: Colors.blue,
          ),
          SliverList(delegate: SliverChildListDelegate([
          const  SizedBox(height: 30),
            ExpansionPanelList(
              expansionCallback: (i, open) {

                  index == i ? index = -1  : index = i ;
                update() ;
              } ,
              children: [

                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded ) {
                  return const ListTile(
                  title : Text("Icon")
                  ) ;},
                    body: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                       children: [
                         ListTile(
                           title: const Text("Multiple de 2"),
                           trailing: DropdownButton(
                               value: dropIcon2,
                               onChanged: (IconData? newValue) {
                                 dropIcon2 = newValue! ;
                                 icon.m2 = newValue ;
                                 update() ;
                               } ,
                               items: iconList.map((e) => DropdownMenuItem(
                                   value: e,
                                   child: Icon(e))).toList()
                           ),
                         ), ListTile(
                           title: const Text("Multiple de 3"),
                           trailing: DropdownButton(
                               value: dropIcon3,
                               onChanged: (IconData? newValue) {
                                 dropIcon3 = newValue! ;
                                 icon.m3 = newValue ;
                                 update() ;
                               } ,
                               items: iconList.map((e) => DropdownMenuItem(
                                   value: e,
                                   child: Icon(e))).toList()
                           ),
                         ), ListTile(
                           title: const Text("Multiple de 5"),
                           trailing: DropdownButton(
                               value: dropIcon5,
                               onChanged: (IconData? newValue) {
                                 dropIcon5 = newValue! ;
                                 icon.m5 = newValue ;
                                 update() ;
                               } ,
                               items: iconList.map((e) => DropdownMenuItem(
                                   value: e,
                                   child: Icon(e))).toList()
                           ),
                         ), ListTile(
                           title: const Text("Multiple de 7"),
                           trailing: DropdownButton(
                               value: dropIcon7,
                               onChanged: (IconData? newValue) {
                                 dropIcon7 = newValue! ;
                                 icon.m7 = newValue ;
                                 update() ;
                               } ,
                               items: iconList.map((e) => DropdownMenuItem(
                                   value: e,
                                   child: Icon(e))).toList()
                           ),
                         )
                       ],
                      ),
                    ),
                  isExpanded : index == 0 ,
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded ) {
                    return const ListTile(
                        title : Text("Couleur")
                    ) ;},
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text("Multiple de 2"),
                          trailing: DropdownButton(
                              value: dropColor2,
                              onChanged: (Color? newValue) {
                                dropColor2 = newValue! ;
                                color.m2 = newValue;
                                update() ;
                              } ,
                              items: colorList.map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Container(
                                    color: e,
                                    width: 30, height: 20,
                                  ))).toList()
                          ),
                        ), ListTile(
                          title: const Text("Multiple de 3"),
                          trailing: DropdownButton(
                              value: dropColor3,
                              onChanged: (Color? newValue) {
                                dropColor3 = newValue! ;
                                color.m3 = newValue ;
                                update() ;
                              } ,
                              items: colorList.map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Container(
                                    color: e,
                                    width: 30, height: 20,
                                  ))).toList()
                          ),
                        ), ListTile(
                          title: const Text("Multiple de 5"),
                          trailing: DropdownButton(
                              value: dropColor5,
                              onChanged: (Color? newValue) {
                                dropColor5= newValue! ;
                                color.m5 = newValue;
                                update() ;
                              } ,
                              items: colorList.map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Container(
                                    color: e,
                                    width: 30, height: 20,
                                  ))).toList()
                          ),
                        ), ListTile(
                          title: const Text("Multiple de 7"),
                          trailing: DropdownButton(
                              value: dropColor7,
                              onChanged: (Color? newValue) {
                                dropColor7 = newValue! ;
                                color.m7 = newValue ;
                                update() ;
                              } ,
                              items: colorList.map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Container(
                                    color: e,
                                    width: 30, height: 20,
                                  ))).toList()
                          ),
                        ),
                      ],
                    ),
                  ),
                  isExpanded : index == 1 ,
                ),
              ],
            )
  ]))
        ]
      ),
    );
  }
}

