import 'package:bloc/bloc.dart';
import 'package:get_it_app/injection_container.dart';

import 'event.dart';
import 'state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrement>((event, emit) {
      getIt<CounterState>().increment() ;
      emit(getIt<CounterState>().count) ;
    } ) ;
    on<CounterDecrement>((event, emit) {
      getIt<CounterState>().decrement() ;
      emit(getIt<CounterState>().count ) ;
    } ) ;
  }

  // Stream<CounterState> mapEventToState(CounterEvent event) async* {
  //  if (event is CounterIncrement) {
  //    state.increment() ;
  //  }
  // }

  // Future<CounterState> init() async {
  //   return state.clone();
  // }
}
