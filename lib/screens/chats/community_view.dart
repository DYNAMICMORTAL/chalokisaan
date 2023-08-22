import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/style.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        title: Center(
        child: Text(
        "Community Groups",
        style: Styles.headlineStyle2.copyWith(color: Colors.white),
    ),
    ),),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 210,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30 ,left: 20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      // width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20, top:20),
                            child: Column(
                              children: [
                                Text("Chiplun Village Jackfruit Group", style: Styles.headlineStyle1,),
                              ],
                            ),
                          ),//Group1// Group1
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text("Taluka Village"),
                                ],
                              )
                            ],
                          ),
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
