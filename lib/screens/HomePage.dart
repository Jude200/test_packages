// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_app/screens/SettingPage.dart';
import 'package:get_it_app/services/connection/bloc.dart';
import 'package:get_it_app/services/connection/event.dart';
import 'package:get_it_app/services/counter/bloc.dart';
import 'package:get_it_app/services/counter/event.dart';
import 'package:get_it_app/services/state_propriety/bloc.dart';
import 'package:get_it_app/services/state_propriety/event.dart';
import 'package:get_it_app/services/state_propriety/state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void update() => setState(() => {});

  @override
  void initState() { super.initState();}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Setting()));
                },
                icon: const Icon(FontAwesomeIcons.list))
          ],
        ),
        body: Center(
          child: BlocBuilder<StateProprietyBloc, StateProprietyState>(
            builder: (context, statePropriety) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(statePropriety.icon, size: 50,),
                const SizedBox(height: 20),
                Container(
                  color: statePropriety.color,
                  margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  child: BlocBuilder<CounterBloc, int>(
                      builder: (context, counter) => Text(
                        "Counter :  $counter ",
                        style: Theme.of(context).textTheme.headline6,
                      )),
                ),
                const SizedBox(height: 20),
                BlocBuilder<ConnectionBloc, bool> (
                  builder: (context, state )  =>
                  state == true ?
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Center(
                        child: Text(statePropriety.number.text) ),
                  ) :
                  const Center(child: Text("Pas de connection internet"),),
                )
              ],
            ),
          ),

        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => {
              context.read<CounterBloc>().add(CounterIncrement()),
              context.read<ConnectionBloc>().add(IsConnected()),
                context.read<StateProprietyBloc>().add(InitEvent()),

              } ,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 15),
            FloatingActionButton(
              onPressed: () => {
                context.read<CounterBloc>().add(CounterDecrement()) ,
                context.read<ConnectionBloc>().add(IsConnected()),
                context.read<StateProprietyBloc>().add(InitEvent()),
    } ,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            )
          ],
        ));
  }
}
