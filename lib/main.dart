import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:car_services/Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'InfoHome.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
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

      body:const InfoHome(),

        bottomNavigationBar: ClipRRect(
        borderRadius:const BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), ),
         child: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white38,
            onTap: (tappedItemIndex) => setState(() {
              _index = tappedItemIndex;
            }),

            currentIndex: _index,
            // iconSize: 20.0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label:'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label:'Profile'),

            ]),
        ),

    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: PageView(),
//   );
// }
