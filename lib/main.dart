import 'package:demo2/Bloc/remote_bloc.dart';
import 'package:demo2/Bloc/remote_event.dart';
import 'package:demo2/Bloc/remote_state.dart';
import 'package:demo2/detail_audio_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Audio Reading',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
