import 'package:bloc/bloc.dart';
import 'package:get_it_app/injection_container.dart';

import 'event.dart';
import 'state.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, bool> {
  ConnectionBloc() : super(false) {
  on<IsConnected>((event, emit) async {emit(await getIt<IsConnectionState>().isConnected()) ;}) ;
  }
}
