import 'package:car_services/Registration.dart';
import 'package:flutter/material.dart';



class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  int _index = 0;
  final mykey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('asset/images/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Form(
          key: mykey,
          child: Stack(
          children: [

            Container(),

            Container(
              padding:const EdgeInsets.only(left: 130, top: 80),
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),

            // SingleChildScrollView
            SingleChildScrollView(

              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [

                            TextField(
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 30,
                            ),

                            TextField(
                              style: const TextStyle(),
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 40,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Sign in',
                                  style: TextStyle( color: Colors.white,
                                      fontSize: 27, fontWeight: FontWeight.w700),
                                ),

                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff4c505b),
                                  child: IconButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        if(mykey.currentState!.validate()){

                                        }
                                      },
                                      icon: const Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const MyRegister()),
                                    );
                                  },

                                  child:  Text(
                                    'Sign Up',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        // color: Color(0xff4c505b),
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),

                                  style:const ButtonStyle(),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child:const Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color:
                                        Color(0xff4c505b),
                                        fontSize: 18,
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),

                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
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
      ),
    );
  }
}
