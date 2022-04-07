// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_app/models/constantes.dart';
import 'package:get_it_app/services/counter.dart';
import 'package:get_it_app/injection_container.dart';
import 'package:get_it_app/services/dioHelper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void update() => setState(() => {});
  Counter count = getIt.get<Counter>();
  DioHelper _helper = DioHelper();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
            actions:[Icon(FontAwesomeIcons.list)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FaIcon(FontAwesomeIcons.calendarDay),
              const SizedBox(height: 20),
              Container(
                color: Colors.yellow,
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                child: BlocBuilder<Counter, int> (builder: (context, counter) =>
                    Text("Conteur :  ${count.counter.toString()} ",

                  style: Theme.of(context).textTheme.headline6,
                ),),
              ),
              const SizedBox(height: 20),
              const Text("Connection Internet Refusé ")
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () async {
                count.increment();
                update() ;
              },
              tooltip: 'Incremente',
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 15),
            FloatingActionButton(
              onPressed: () {
                count.desincrement();
                update();
              }, //=> getIt<Counter>().increment(),
              tooltip: 'Desincremente',
              child: const Icon(Icons.remove),
            )
          ],
        ));
  }
}
