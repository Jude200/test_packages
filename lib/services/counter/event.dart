abstract class CounterEvent {
  const CounterEvent() ;

  List<Object> get props => [] ;
}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}