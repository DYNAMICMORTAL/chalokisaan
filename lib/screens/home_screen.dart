import 'dart:ui';

import 'package:chalokisaan/screens/ads.dart';
import 'package:chalokisaan/screens/ads2.dart';
import 'package:chalokisaan/screens/packages/package_view.dart';
import 'package:chalokisaan/screens/packages/package_view2.dart';
import 'package:chalokisaan/screens/packages/package_view3.dart';
import 'package:chalokisaan/screens/packages/package_view4.dart';
import 'package:chalokisaan/screens/profile_view.dart';
import 'package:chalokisaan/utils/style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../maps/maps.dart';
import 'chats/community_view.dart';

import '../Gov_Schemes/government_schemes.dart';
import '../news/news.dart';
import 'Button_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF14453D),
        title: Center(
          child: Text(
            "Chalo Kisaan",
            style: Styles.headlineStyle1.copyWith(color: Colors.white),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Open the drawer when the menu icon is tapped
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              // Navigate to BottomBar when the person icon is pressed
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomBar(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFF14453D),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile'); // Navigate to Profile screen
                    },
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('lib/assets/undraw_Profile_pic_re_iwgo.png'),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile'); // Navigate to Profile screen
                    },
                    child: Text(
                      'Aditi M',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

            ListTile(
              leading: Icon(FluentSystemIcons.ic_fluent_home_regular),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.news),
              title: Text('Government Schemes'),
              onTap: () {
                // Navigate to GovSchemesList screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GovSchemesList()),
                );
              },


            ),
            ListTile(
              leading: Icon(Icons.diamond_rounded),
              title: Text('Visit Hidden Gems →'),
              onTap: () {
                Navigator.pushNamed(context, '/maps');
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.news),
              title: Text('Farm News'),
              onTap: () {
                // Navigate to GovSchemesList screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsApp()),
                );
              },


            ),

            ListTile(
              leading: Icon(FluentSystemIcons.ic_fluent_info_regular),
              title: Text('About Us'),
              onTap: () {
                // Add navigation logic to redirect to the about us section
              },
            ),
          ],
        ),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                // margin: EdgeInsets.symmetric(vertical: 20.0,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD),
                ),
                // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                // child: Row(
                //   children: [
                //     const Icon(Icons.search),
                //     const Gap(20),
                //     Expanded(
                //       child: TextField(
                //         autofocus: false, // Remove autofocus from here
                //         onChanged: (query) {
                //           // Handle search query here
                //         },
                //         decoration: InputDecoration.collapsed(
                //           hintText: "Search for contents in the app",
                //           hintStyle: Styles.headlineStyle5,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.only(left:20, right: 20, top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Exclusive Packages", style: Styles.headlineStyle2,),
                      ],
                    ),
                    const Gap(20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                                      // height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // width: MediaQuery.of(context).size.width/2.5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Nashik Vineyard Experience:", style: Styles.headlineStyle3.copyWith(fontSize: 15, fontWeight: FontWeight.w700), overflow: TextOverflow.ellipsis,),
                                          const Gap(10),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: const Image(
                                              image: AssetImage('lib/assets/grape2.png',),
                                              // width: 150,
                                              width: 200,
                                            ),
                                          ),
                                          const Gap(5),
                                          // Text("Enrich yourselves with the famous Ratnagiri Alphansos", style: Styles.headlineStyle3,),
                                          // const Gap(5),
                                          Text("Taste the wine from the be...", style: TextStyle(fontWeight: FontWeight.w500),),
                                          const Gap(5),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExPackages()));
                                            },
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Gap(5),
                                                Text("See More ", style: Styles.headlineStyle2.copyWith(fontSize: 14, color: Colors.deepPurpleAccent),),
                                                Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ), //Package 1 Container
                                  ],
                                ), //#1 row
                                Row(), // #2 Row
                              ],
                            ),
                          ),
                          const Gap(25),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                                      // height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // width: MediaQuery.of(context).size.width/2.5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Mahabaleshwar Strawberry Fes..", style: Styles.headlineStyle3.copyWith(fontSize: 15, fontWeight: FontWeight.w700), overflow: TextOverflow.ellipsis,),
                                          const Gap(10),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: const Image(
                                              image: AssetImage('lib/assets/strawberries.png',),
                                              // width: 150,
                                              width: 225,
                                            ),
                                          ),
                                          const Gap(5),
                                          // Text("Enrich yourselves with the famous Ratnagiri Alphansos", style: Styles.headlineStyle3,),
                                          // const Gap(5),
                                          Text("Sweet and juicy straw only from...", style: TextStyle(fontWeight: FontWeight.w500),),
                                          const Gap(5),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExPackages2()));
                                            },
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Gap(5),
                                                Text("See More ", style: Styles.headlineStyle2.copyWith(fontSize: 14, color: Colors.deepPurpleAccent),),
                                                Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ), //Package 1 Container
                                  ],
                                ), //#1 row
                                Row(), // #2 Row
                              ],
                            ),
                          ),
                          const Gap(25),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                                      // height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // width: MediaQuery.of(context).size.width/2.5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Nagpur Orange Orchard Ad..", style: Styles.headlineStyle3.copyWith(fontSize: 15, fontWeight: FontWeight.w700), overflow: TextOverflow.ellipsis,),
                                          const Gap(10),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: const Image(
                                              image: AssetImage('lib/assets/orange.png',),
                                              // width: 150,
                                              width: 200,
                                            ),
                                          ),
                                          const Gap(5),
                                          // Text("Enrich yourselves with the famous Ratnagiri Alphansos", style: Styles.headlineStyle3,),
                                          // const Gap(5),
                                          Text("Orange never so orange befo..", style: TextStyle(fontWeight: FontWeight.w500),),
                                          const Gap(5),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExPackages3()));
                                            },
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Gap(5),
                                                Text("See More ", style: Styles.headlineStyle2.copyWith(fontSize: 14, color: Colors.deepPurpleAccent),),
                                                Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ), //Package 1 Container
                                  ],
                                ), //#1 row
                                Row(), // #2 Row
                              ],
                            ),
                          ),
                          const Gap(25),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                                      // height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // width: MediaQuery.of(context).size.width/2.5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Ratnagiri Haapus Festival...", style: Styles.headlineStyle3.copyWith(fontSize: 15, fontWeight: FontWeight.w700), overflow: TextOverflow.ellipsis,),
                                          const Gap(10),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: const Image(
                                              image: AssetImage('lib/assets/mango.png',),
                                              // width: 150,
                                              width: 250,
                                            ),
                                          ),
                                          const Gap(5),
                                          // Text("Enrich yourselves with the famous Ratnagiri Alphansos", style: Styles.headlineStyle3,),
                                          // const Gap(5),
                                          Text("Organic Farms to Coconut Groves", style: TextStyle(fontWeight: FontWeight.w500),),
                                          const Gap(5),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExPackages4()));
                                            },
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Gap(5),
                                                Text("See More ", style: Styles.headlineStyle2.copyWith(fontSize: 14, color: Colors.deepPurpleAccent),),
                                                Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ), //Package 1 Container
                                  ],
                                ), //#1 row
                                Row(), // #2 Row
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),//inner outer exclusive packages

                  ],
                ),

              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width,
                color: Colors.white, // Customize the background color as needed
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tagline
                    Text(
                      "Custom Packages",
                      style: Styles.headlineStyle2, // Customize the style as needed
                    ),
                    const Gap(20),

                    // Header
                    Text(
                      "Don't find what you're looking for..",
                      style: Styles.headlineStyle3, // Customize the style as needed
                    ),
                    const Gap(20),

                    // Button
                    ElevatedButton(
                      onPressed: () {
                        // Redirect to custom_packages.dart when the button is pressed
                        Navigator.pushNamed(context, '/custom_packages');
                      },
                      child: Text(
                        "Customize my package",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Gap(30),
                    Container(
                      child: Column(
                        children: [
                          Text("About Us", style: Styles.headlineStyle2),
                          Row(
                            children: [
                              Text("Mr. Mihir Amin"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Mr. Rahul Kamble"),
                            ],
                          ),
Row(
  children: [
                              Text("Mr. Dev Shirishkar"),
                            ],
),Row(
                            children: [
                              Text("Mr. Prathamesh Thakare"),
                            ],
                          ),Row(
                            children: [
                              Text("Mr. Om Bhojane"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
// Rest of your content here
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Styles.primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Set the current index as needed
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.policy),
          //   label: "Gov.",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (index) {
          // Handle navigation to different pages based on the index
          if (index == 0) {
            // Navigate to Home page
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            // Navigate to GovSchemesList page when "Government Schemes" is tapped
            Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
          } else if (index == 2) {
            // Navigate to Profile page
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileView()));
          }
        },
      ),
    );
  }
}