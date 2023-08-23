import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'chat_view.dart';
import 'community_view.dart';

import '../../utils/style.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFF14453D),
          iconTheme: IconThemeData(color: Colors.white),
        title: Center(
        child: Text(
        "Community Groups",
        style: Styles.headlineStyle2.copyWith(color: Colors.white),
    ),
    ),),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 1000,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30 ,left: 20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatScreen()),);
                      },
                      child: Container(
                        height: 150,
                        // width: 500,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20, right: 20, top:20,bottom: 20),
                              child: Column(
                                children: [
                                  Text("Chiplun Village Group", style: Styles.headlineStyle1,),
                                  const Gap(10),
                                  Row(
                                    children: [
                                      Text("Newest Updates...", style: Styles.headlineStyle5),
                                      const Spacer(),
                                      Text("3mins ago...", style: Styles.headlineStyle4,),
                                    ],
                                  ),
                                  const Gap(5),
                                  Row(
                                    children: [
                                      Text("Amritpal mangoes fail this year.", overflow: TextOverflow.ellipsis,),
                                      Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
                                    ],
                                  ),

                                ],
                              ),
                            ),//Group1// Group1
                          ],
                        ),
                      ),
                    ),
                    const Gap(25),
                    Container(
                      height: 180,
                      // width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20, top:20,bottom: 20),
                            child: Column(
                              children: [
                                Text("Ratnagiri Mandi Union", style: Styles.headlineStyle1,),
                                const Gap(10),
                                Row(
                                  children: [
                                    Text("Newest Updates...", style: Styles.headlineStyle5),
                                    const Spacer(),
                                    Text("30secs ago...", style: Styles.headlineStyle4),
                                  ],
                                ),
                                const Gap(5),
                                Row(
                                  children: [
                                    Text("Case filed at HC...", overflow: TextOverflow.ellipsis,),
                                    const Gap(5),
                                    Icon(FluentSystemIcons.ic_fluent_arrow_right_filled,),
                                  ],
                                ),
                              ],
                            ),
                          ),//Group1// Group1
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
