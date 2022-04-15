import 'package:bloc/bloc.dart';

import '../../injection_container.dart';
import '../core.dart';
import 'event.dart';
import 'state.dart';

class StateProprietyBloc extends Bloc<StateProprietyEvent, StateProprietyState> {
  StateProprietyBloc() : super(propriety) {
    on<InitEvent>((event, emit) {
      getIt<Core>().change();
      emit(StateProprietyState(
        icon: getIt<Core>().icon,
        color: getIt<Core>().color,
        number: getIt<Core>().num ,
      )) ;
    }) ;
  }


}
