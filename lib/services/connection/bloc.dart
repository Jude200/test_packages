import 'package:bloc/bloc.dart';

import 'event.dart';
import 'state.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionState> {
  ConnectionBloc() : super(ConnectionState().init());

  @override
  Stream<ConnectionState> mapEventToState(ConnectionEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    }
  }

  Future<ConnectionState> init() async {
    return state.clone();
  }
}
