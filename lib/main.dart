import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'InfoHome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 4000,
          // splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.blue,
          splashIconSize: 300,
          splash: Center(
            child: Image.asset('asset/images/logo.png'),
          ),
          nextScreen: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const InfoHome(),
    );
  }
}

//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: PageView(),
//   );
// }
