import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui1/homescreen.dart';
import 'package:ui1/provider/likebutton.dart';
import 'package:ui1/provider/selectbutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LikeProvider(),
        ),
        ChangeNotifierProvider(create: (context) => ButtonsProvider())
      ],
      child: MaterialApp(home: HomeScreen()),
    );
  }
}
