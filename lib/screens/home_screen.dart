import 'package:chalokisaan/agrotourism/screens/homeagro.dart';
import 'package:chalokisaan/screens/ads.dart';
import 'package:chalokisaan/screens/ads2.dart';
import 'package:chalokisaan/utils/style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Gov_Schemes/government_schemes.dart';
import '../agrotourism/screens/video_screen.dart';
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
        backgroundColor: Styles.primaryColor,
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
          color: Styles.primaryColor,
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
  leading: Icon(CupertinoIcons.news),
  title: Text('Agrotourism'),
  onTap: () {
    // Navigate to GovSchemesList screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AgroHome()),
    );
  },
      ),
      ListTile(
        leading: Icon(FluentSystemIcons.ic_fluent_more_regular),
        title: Text('Women Empowerment'),
        onTap: () {
          // Add navigation logic to redirect to the pricing section
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0,),
                width: MediaQuery.of(context).size.width * 0.90, // 85% width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    const Gap(20),
                    Expanded(
                      child: TextField(
                        autofocus: false, // Remove autofocus from here
                        onChanged: (query) {
                          // Handle search query here
                        },
                        decoration: InputDecoration.collapsed(
                          hintText: "Search for contents in the app",
                          hintStyle: Styles.headlineStyle5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Rest of your content here
              Container(
                padding: EdgeInsets.only(top: 20,),
                color: Colors.white,
                child: Text(
                  "Government Schemes",
                  style: Styles.headlineStyle2,
                ),
              ),
              SizedBox(
                height: 200, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Ads(), // Your first banner ad
                    Ads(), // Your second banner ad
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20,),
                color: Colors.white,
                child: Text(
                  "Women Empowerment",
                  style: Styles.headlineStyle2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to WomenBenefitsPage
                  Navigator.pushNamed(context, '/women_benefits');
                },
                child: Ads2(), // Your ad with a tap gesture to navigate to WomenBenefitsPage
              ),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.policy),
            label: "Government Schemes",
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => GovSchemesList()));
          } else if (index == 2) {
            // Navigate to Profile page
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }
}
