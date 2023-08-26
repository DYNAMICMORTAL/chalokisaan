import 'package:chalokisaan/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../provider/auth_provider.dart';
import '../utils/style.dart';
import 'Button_bar.dart';


class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF14453D),iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Text(
            "About",
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
        ),),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15, left: 0),
              width: MediaQuery.of(context).size.width*0.90,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(ap.userModel.name, style: Styles.headlineStyle1.copyWith(fontSize: 56, color: Colors.black),),
                              const Gap(5),
                              Container(
                                  padding: const EdgeInsets.symmetric(vertical: 18),
                                  child: Text("how did you travel today?", style: Styles.headlineStyle3.copyWith(fontSize: 17,),))
                            ],
                          ),
                        ),//->Naming Container
                        // Container(
                        //   padding: const EdgeInsets.only(top: 0,bottom: 0),
                        //   child: Align(
                        //     alignment: Alignment.center,
                        //     child: Container(
                        //       width: 96,
                        //       child: Image(image: AssetImage('lib/assets/undraw_Profile_pic_re_iwgo.png')),
                        //     ),
                        //   ),
                        // ),//->Profile Photo Container
                      ],
                    ),
                  ), //->The Profile Container with no titles//-> the title Container
                ],
              ),
            ),//->the main Up whole Container
            const Gap(15),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
              padding: const EdgeInsets.only(top: 5),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20,right: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_settings_filled),
                      const Gap(10),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/settings'); // Navigate to SettingsPage
                          },
                          child: Text("Settings", style: Styles.headlineStyle3)),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_arrow_maximize_filled),
                      const Gap(10),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/rewards'); // Navigate to SettingsPage
                          },
                          child: Text("Rewards", style: Styles.headlineStyle3)),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_activity_filled),
                      const Gap(10),
                      Text("Manage Chalo Kisaan account", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_help_circle_filled),
                      const Gap(10),
                      Text("Help", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_badge_filled),
                      const Gap(10),
                      Text("Report", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_info_filled),
                      const Gap(10),
                      Text("Legal", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      // Icon(FluentSystemIcons.ic_fluent_settings_filled),
                      InkWell(
                          onTap: () {
                            // Navigate to BottomBar when the person icon is pressed
                            ap.userSignOut().then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar())));

                          },
                          child: Text("Log out Aditi M", style: Styles.textStyle.copyWith(color: Colors.red))),
                    ],
                  ),const Gap(10),
                  Row(
                    children: [
                      // Icon(FluentSystemIcons.ic_fluent_settings_filled),
                      Text("Delete My account", style: Styles.textStyle.copyWith(color: Colors.red),),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("v1.0.0", style: Styles.headlineStyle4,),
                    ],
                  ),
                ],
              ),
            ),//->the main Down whole Container
            const Gap(15),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
              padding: const EdgeInsets.only(top: 5),
            ),
          ],
        ),
      ),
    );
  }
}
