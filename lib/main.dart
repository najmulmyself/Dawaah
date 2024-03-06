import 'package:dawaah/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dawaah',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
        // brightness: Brightness.dark,
        primary: Colors.black,
        // background: Colors.amber,
      )),
      home: const HomePage(),
    );
  }
}
