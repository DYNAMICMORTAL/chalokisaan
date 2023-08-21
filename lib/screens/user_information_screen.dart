import 'package:chalokisaan/data_model/user_data.dart';
import 'package:chalokisaan/provider/auth_provider.dart';
import 'package:chalokisaan/utils/basicUtils.dart';
import 'package:chalokisaan/utils/custom_button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:gap/gap.dart';
import 'package:provider/provider.dart';



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

  void selectImage() async{
    image = await pickImage(context);
    setState(() {});
  }







  @override
  Widget build(BuildContext context) {
    final isLoading = Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      body: SafeArea(
        child: isLoading == false ? const Center(child: CircularProgressIndicator(color: Colors.black,)) : SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Center(
            child: Column(
              children: [
                InkWell(
                  onTap: () => selectImage(),
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
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: JustAButton(
                    text: "Continue",
                    onPressed: () => storeData(),
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
            margin: const EdgeInsets.all(0.8),
            // decoration: BoxDecoration(
            //
            // ),
          ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
              borderSide: BorderSide(color: Colors.grey.shade500),
            ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          hintText: hintText,
          alignLabelWithHint: true,
          border: InputBorder.none,
        ),
      ),
    );
  }



  void storeData() async{
    final ap = Provider.of<AuthProvider>(context, listen: false);
    UserModel userModel = UserModel(name: nameController.text.trim(), profilePic: "", createdAt: "", phoneNumber: "", uid: "");
    if(image!=null){
      ap.saveUserDataToFirebase(
        context: context,
        userModel: userModel,
        profilePic: image!,
        onsSuccess: () {
          ap.saveUserDataToSP().then((value) => null);
        },
      );
    } else {
      showSnackBar(context, "Please upload a profile Photo");
    }
  }
}
