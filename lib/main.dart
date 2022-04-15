import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_app/services/connection/bloc.dart';
import 'package:get_it_app/injection_container.dart' as di;
import 'package:get_it_app/screens/HomePage.dart';
import 'package:get_it_app/services/counter/bloc.dart';
import 'package:get_it_app/services/state_propriety/bloc.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(create: (BuildContext context) => CounterBloc()),
          BlocProvider<ConnectionBloc>(create: (BuildContext context) => ConnectionBloc()),
          BlocProvider<StateProprietyBloc>(create: (BuildContext context) => StateProprietyBloc())
        ],

        child: Builder(builder: (context) => const MyHomePage(title: 'Get it demo') ),
      ),
    );
  }
}