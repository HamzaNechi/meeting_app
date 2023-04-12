import 'package:flutter/material.dart';
import 'package:group_video_calling/therapy_en_ligne/home_therapy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomeCall(),
      debugShowCheckedModeBanner: false,
    );
  }
}
