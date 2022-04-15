import 'package:bloc/bloc.dart';

import 'event.dart';
import 'state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState().init());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    }
  }

  Future<CounterState> init() async {
    return state.clone();
  }
}
