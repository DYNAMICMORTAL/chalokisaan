import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';



class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {

  final nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Center(
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                ),
                Text("Enter Your Name", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500, color: Colors.black),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
