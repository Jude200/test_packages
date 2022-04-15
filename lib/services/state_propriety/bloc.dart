import 'package:bloc/bloc.dart';

import 'event.dart';
import 'state.dart';

class StateProprietyBloc extends Bloc<StateProprietyEvent, StateProprietyState> {
  StateProprietyBloc() : super(StateProprietyState().init());

  @override
  Stream<StateProprietyState> mapEventToState(StateProprietyEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    }
  }

  Future<StateProprietyState> init() async {
    return state.clone();
  }
}
