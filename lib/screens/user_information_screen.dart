import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:gap/gap.dart';



class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {

  File? image;
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
                  child: image == null ? const CircleAvatar(
                    radius: 50,
                    child: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled, size: 30,),
                  ): CircleAvatar(
                    backgroundImage: FileImage(image!),
                    radius: 50,
                  ),
                ),
                const Gap(25),
                Text("Enter Your Name", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500, color: Colors.black),),
                Container(
                  child: Column(
                    children: [
                      textField(hintText: "Aditi M", icon: Icons.account_circle, inputType: TextInputType.text, maxLines: 1, controller: nameController)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget textField({required String hintText, required IconData icon, required TextInputType inputType, required int maxLines, required TextEditingController controller}){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        decoration: InputDecoration(
          prefixIcon: Container(
            
          ),
        ),
      ),
    );
  }
}
