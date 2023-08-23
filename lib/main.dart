import 'package:chalokisaan/provider/auth_provider.dart';
import 'package:chalokisaan/screens/customize_packages/custom_packages.dart';
import 'package:chalokisaan/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:chalokisaan/screens/Button_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chalokisaan/screens/register_view.dart';
import 'package:provider/provider.dart';
import 'package:chalokisaan/screens/home_screen.dart';

import 'maps/maps.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: {
          '/register': (context) => const Register(),
          '/homescreen': (context) => HomeScreen(),
          '/custom_packages': (context) => CustomPackagesScreen(),
          '/maps': (context) => TouristAttractionsScreen(),
          // '/home': (context) => const HomeScreen(),
          // '/123Up': (context) => const Up123(),
          // '/123Down': (context) => const Down123(),
          // '/chatoverview': (context) => const GridOverView(),
          // '/scheduledbus': (context) => const ScheduledBuses(),
          // '/profile': (context) => const ProfileView(),
          // '/settings': (context) => const SettingsPage(),
          // '/subscriptions': (context) => const SubscriptionsPage(),
          // '/rewards': (context) => const RewardsPage(),
          // '/payforticket': (context) => PayForTicketPage(),
        },
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const BottomBar(),
      ),
    );
  }
}