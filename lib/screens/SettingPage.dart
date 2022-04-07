// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get_it_app/models/constantes.dart';

class Setting extends StatefulWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}
int index = 1 ;

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers : [
          const SliverAppBar(
            title: Text("Setting Page"),
            backgroundColor: Colors.white,
          ),
          SliverList(delegate: SliverChildListDelegate([
            ExpansionPanelList(
              expansionCallback: (i, open) {
                setState(() {
                  index == i ? index = -1  : index = i ;
                });
              } ,
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded ) {
                  return const ListTile(
                  title : Text("Icon")
                  ) ;},
                    body: const Text("Jude Seruch")
                )
              ],
            )
  ]))
        ]
      ),
    );
  }
}