import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/model/counter.dart';


  class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 상위 위젯에서 Bloc 객체를 가져온다.
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('flutter_bloc_counter'),),
      body: BlocBuilder<CounterBloc, int>(

        builder: (context, count) {
          return Center(
            child: Text(
              '$count', style: TextStyle(fontSize: 100),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                // + 이벤트를 발행한다.
                counterBloc.add(CounterEvent.increment);
              },

            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                // - 이벤트를 발행한다.
                counterBloc.add(CounterEvent.decrement);
              },

            ),
          )
        ],
      ),
    );
  }
}