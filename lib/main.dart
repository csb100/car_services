import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:car_services/Login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          children: [
            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'Car Up',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            const Text('ccccccccccccccccccccccc'),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const MyLogin()),
                                  );
                                  }, child: const Text('Book'))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/pic1.png',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Checking Battery',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            Text('ccccccccccccccccccccccc'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/battery.png',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'AC Checking',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            Text('ccccccccccccccccccccccc')
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/air.jpg',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Oil Changing',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            Text('ccccccccccccccccccccccc')
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/oil.png',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Painting ',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            Text('ccccccccccccccccccccccc')
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                      'asset/images/Screenshot 2023-10-20 222157.png',
                      width: 110.0,
                      height: 110.0),
                ),
              ),
            ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Washing ',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            Text('ccccccccccccccccccccccc')
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/wash.png',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Checking Tire ',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            Text('ccccccccccccccccccccccc')
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/wheels.jpg',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Colors.white,
            //     image: const DecorationImage(
            //       fit: BoxFit.scaleDown,
            //       image: AssetImage('asset/images/oils111.png'),
            //     ),
            //   ),
            // ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Offering Oils',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text('bbbbbbbbbbbbbbbbbbbbbbb'),
                            Text('ccccccccccccccccccccccc')
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/oils111.png',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            Material(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.lightBlue[50],
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (context) => const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Tire Change',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'We are a professional car service center offering a wide range of automotive solutions, including expert car painting services. Our skilled team is dedicated to enhancing the aesthetics and protecting the exterior of your vehicle. Whether you need a fresh coat of paint, paint repairs, or custom finishes, we take pride in delivering high-quality car painting services to make your vehicle look its best.',
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('asset/images/tire.png',
                      width: 110.0, height: 110.0),
                ),
              ),
            ),

            Container(),

            Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Boooooook nooooow!!!'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(110, 40), //////// HERE
                    ),
                  )
                ])
          ],
        ),
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
