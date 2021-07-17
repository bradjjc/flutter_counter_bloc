
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/model/counter.dart';
import 'package:flutter_counter_bloc/ui/counter_home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(create: (_) => CounterBloc(), child: CounterHome()));
          // provider 에 chang리enotifier 느낌으로 최상위에 둔다
  }
}