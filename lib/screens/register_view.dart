import 'package:chalokisaan/Farmer_Dashboard/homefarmer.dart';
import 'package:chalokisaan/provider/auth_provider.dart';
import 'package:chalokisaan/utils/custom_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("REGISTER NOW"),
              const SizedBox(height: 20,),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Phone Number Here.",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black45,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black45,
                    ),
                  ),
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(context: context,
                            countryListTheme: const CountryListThemeData(
                              bottomSheetHeight: 550,
                            ),
                            onSelect: (value){

                              setState(() {
                                selectedCountry = value;
                              });
                            });
                      },
                      child: Text("${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}",
                        style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),

                    ),
                  ),
                  suffixIcon: phoneController.text.length > 9 ? Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Icon(Icons.done, color: Colors.black, size: 20,),
                  ) : null,
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: JustAButton(
                  onPressed: () {
                    sendPhoneNumber();
                  },
                  text: "Login",
                ),
              ),
              const SizedBox(height: 10,), // Add spacing
              SizedBox(
                width: double.infinity,
                height: 50,
                child: JustAButton(
                  onPressed: () {
                    // Handle "Login as Guest" button press
                    loginAsGuest();
                  },
                  text: "Login as Guest",
                ),
              ),
              const SizedBox(height: 10,), // Add spacing
              SizedBox(
                width: double.infinity,
                height: 50,
                child: JustAButton(
                  onPressed: () {
                    // Handle "Login as Guest" button press
                    loginAsFarmer();
                  },
                  text: "Login as Farmer",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }

  void loginAsGuest() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void loginAsFarmer() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeFarmer()));
  }
}
