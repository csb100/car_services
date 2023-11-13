import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'Login.dart';




class InfoHome extends StatefulWidget {
  const InfoHome({super.key});

  @override
  State<InfoHome> createState() => _InfoHomeState();
}

class _InfoHomeState extends State<InfoHome> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: NavBar(

      ),
      appBar: AppBar(
        title: const Center(child: Text('Home',style: TextStyle(fontSize: 28),)),
      ),
      backgroundColor: Colors.blue[200],
        body: Stack(children:[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20,10),
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
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Undercarriage Service',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text('Experience peace of mind on the road with our thorough undercarriage '
                                    'inspection service. Our skilled technicians meticulously examine the underside '
                                    'of your vehicle, checking for signs of wear, damage, and potential issues. From the '
                                    'exhaust system to the suspension components, we leave no detail unnoticed. Benefit from'
                                    ' our comprehensive assessment to ensure your vehicles safety, handling, and overall performance.'
                                    ' Drive confidently—schedule your undercarriage inspection today.',
                                style: TextStyle(fontSize: 18),),
                                const SizedBox(
                                  height: 30,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const MyLogin()),
                                      );
                                    },
                                    child: const Text('Book'))
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
                        builder: (context) =>  Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                               const Text(
                                  'Checking Battery',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),

                               const SizedBox(height: 25,),
                               const Text('Ensure your car starts reliably with our professional battery '
                                    'services. Our skilled technicians conduct comprehensive inspections,'
                                    ' using advanced diagnostics to assess battery health. '
                                    'If a replacement is needed, we offer prompt service with high-quality batteries. Trust us for reliability, safety, and expert advice on maintaining your vehicles electrical system. Do not get stranded—visit us for peace of mind on the road.',
                                style: TextStyle(fontSize: 18),),

                                const SizedBox(height: 25,),

                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const MyLogin()),
                                      );
                                    },
                                    child: const Text('Book'))

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
                        builder: (context) =>  Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text(
                                  'AC Checking',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 25,),

                                const Text(
                                    'AC system check. Our skilled technicians use advanced diagnostic tools '
                                    'to assess the performance of your air conditioning system. We check for'
                                    ' refrigerant levels, inspect components for wear and tear, and ensure optimal '
                                    'functionality. Whether it is a routine check or addressing cooling issues, trust '
                                    'us to keep you comfortably on the road. Beat the heat—schedule your AC system check '
                                    'for a refreshing driving experience.',
                                style: TextStyle(fontSize: 18),),

                                const SizedBox(height: 25,),

                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const MyLogin()),
                                      );
                                    },
                                    child: const Text('Book'))

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
                        builder: (context) =>  Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                              const  Text(
                                  'Oil Changing',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),

                                const SizedBox(height: 25,),

                                const Text('Experience peak engine performance with our '
                                    'swift oil change service. Our expert technicians ensure your '
                                    'vehicle runs smoothly by replacing old oil with high-quality options. '
                                    'Schedule your oil change for a quick, reliable boost to your engines health.',
                                style: TextStyle(fontSize: 18),),

                                const SizedBox(height: 25,),

                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const MyLogin()),
                                      );
                                    },
                                    child: const Text('Book'),),
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
                        builder: (context) =>  Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                               const Text(
                                  'Painting ',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),

                                const SizedBox(height: 25,),

                                const Text('Revitalize your vehicles appearance with our skilled and durable painting services.'
                                    ' Trust us for professional results that enhance your cars aesthetic appeal. Schedule your service for a fresh,'
                                    ' flawless finish.',
                                style: TextStyle(fontSize: 18),),

                                const SizedBox(height: 25,),

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyLogin()),
                                    );
                                  },
                                  child: const Text('Book'),),

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
                        builder: (context) =>  Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                               const Text(
                                  'Washing ',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),

                                const SizedBox(height: 25,),

                                const Text('Experience a professional touch with our thorough car wash service.'
                                    ' Our precise techniques and top-quality products ensure a spotless and polished '
                                    'finish. Schedule your service for a refreshed and gleaming vehicle.',
                                style: TextStyle(fontSize: 18),),

                                const SizedBox(height: 25,),

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyLogin()),
                                    );
                                  },
                                  child: const Text('Book'),),

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
                        builder: (context) => Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                              const  Text(
                                  'Checking Tire ',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),

                                const SizedBox(height: 25,),

                              const  Text('Ensure your safety on the road with our tire inspection service. '
                                    'Our skilled technicians meticulously check tire tread, pressure, '
                                    'and overall condition to identify any potential issues. Trust us to keep '
                                    'your tires in optimal shape, enhancing vehicle performance and safety. '
                                    'Drive confidently—schedule your tire inspection today.',
                                style: TextStyle(fontSize: 18),),

                                const SizedBox(height: 25,),

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyLogin()),
                                    );
                                  },
                                  child: const Text('Book'),),

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


                Material(
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.lightBlue[50],
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                        builder: (context) =>  Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                              const  Text(
                                  'Offering Oils',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),

                               const SizedBox(height: 25,),

                               const Text('Elevate your engines performance with our range of premium oils.'
                                    ' We offer high-quality oil products, meticulously selected for optimal '
                                    'lubrication and engine health. Choose from our selection for a smooth-running'
                                    ' and long-lasting vehicle. Upgrade your oil for an enhanced driving experience—visit'
                                    ' us for top-tier oil offerings.',
                               style: TextStyle(fontSize: 18),),

                               const SizedBox(height: 25,),

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyLogin()),
                                    );
                                  },
                                  child: const Text('Book'),),

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
                        builder: (context) =>  Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                              const  Text('Tire Change',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.bold),
                                ),

                                SizedBox(height: 25,),

                              const  Text('Experience a quick and reliable tire change with our expert service. '
                                    'Whether it is a flat tire or a seasonal swap, our skilled technicians '
                                    'ensure a smooth transition. Trust us for efficient and professional tire changes, '
                                    'keeping you safely on the road. Schedule your tire change for prompt and reliable service.',
                                  style: TextStyle(fontSize: 18),
                                ),
                               const SizedBox(height: 25,),

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyLogin()),
                                    );
                                  },
                                  child: const Text('Book'),),

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

              ],

            ),
          ),
        ],

        ),

      bottomNavigationBar: ClipRRect(
        borderRadius:const BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), ),
        child: BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: (tappedItemIndex) => setState(() {
              _index = tappedItemIndex;
              if(_index == 0){

              }
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



