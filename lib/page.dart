import 'package:flutter/material.dart';
import 'package:get_it_app/counter.dart';
import 'package:get_it_app/injection_container.dart';
import 'injection_container.dart' as di;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void update() => setState(() => {});
  Counter count = getIt.get<Counter>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'A compter :',
              ),
              Text(
                count.counter.toString(),
                //getIt<Counter>().counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                count.increment();
                update();
              }, //=> getIt<Counter>().increment(),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                count.desincrement();
                update();
              }, //=> getIt<Counter>().increment(),
              tooltip: 'Desincrement',
              child: const Icon(Icons.remove),
            )
          ],
        ));
  }
}
