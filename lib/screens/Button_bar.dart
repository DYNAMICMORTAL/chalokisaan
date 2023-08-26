import 'package:chalokisaan/provider/auth_provider.dart';
import 'package:chalokisaan/screens/register_screen.dart';
import 'package:chalokisaan/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chalokisaan/utils/custom_button.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("WELCOME →", style: Styles.headlineStyle1,),
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: JustAButton(
                    onPressed: () async {
                      if(ap.isSignedIn == true){
                        await ap.getDataFromSP().whenComplete(() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen(),),),);
                      }
                      else{
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                      }
                      // if(ap.isSignedIn == true)?Navigator.pushNamed(context, '/homescreen'):
                      // Navigator.pushNamed(context, '/register');
                    },
                    text: "Let's view some deals today ...",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

