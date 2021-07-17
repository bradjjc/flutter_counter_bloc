import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);



  // 처음 CounterBloc객체가 생겼을 때 초기 상태를 정의해준다.
  @override
  int get initialState => 0;

  // getter 생성
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch(event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
    }
  }
}