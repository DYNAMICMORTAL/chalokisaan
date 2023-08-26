import 'package:chalokisaan/provider/auth_provider.dart';
import 'package:chalokisaan/screens/home_screen.dart';
import 'package:chalokisaan/screens/user_information_screen.dart';
import 'package:chalokisaan/utils/basicUtils.dart';
import 'package:chalokisaan/utils/custom_button.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';


class OtpViewPage extends StatefulWidget {
  final String verificationId;
  const OtpViewPage({super.key, required this.verificationId});

  @override
  State<OtpViewPage> createState() => _OtpViewPageState();
}

class _OtpViewPageState extends State<OtpViewPage> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    final isLoading = Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      body: SafeArea(
        child: isLoading == true ? const Center(child: CircularProgressIndicator(color: Colors.black,)):Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
                      ),
                    ),
                    const Gap(50),
                    Column(
                      children: [
                        Text("Verification", style: TextStyle(fontSize: 26),),
                        Text("Enter OTP received", style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ],

                ),
                const SizedBox(height: 20,),
                Pinput(
                  length: 6,
                  showCursor: true,
                  defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                  onCompleted: (value) {
                    setState(() {
                      otpCode = value;
                    });
                  },
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: JustAButton(
                    text: "Verify",
                    onPressed: () {
                      if(otpCode != null){
                        verifyOtp(context, otpCode!);
                      }else{
                        showSnackBar(context, "Enter 6-Digit code");
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Didn't receive any code?"),
                const SizedBox(height: 20,),
                const Text("Resend new code"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void verifyOtp(BuildContext context, String userOtp){
    final ap = Provider.of<AuthProvider>(context, listen: false);
    ap.verifyOtp(context: context, verificationId: widget.verificationId, userOtp: userOtp, onSucess: (){
      //check user present in DB or not
      ap.checkExistingUser().then((value) async {
        if(value == true) {
          // user exists in our db
          ap.getDataFromFirestore().then((value) => ap.saveUserDataToSP().then((value) => ap.setSignIn().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen(),),(route)=>false))));
        } else {
          // New USER
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const UserInformationScreen()), (route) => false);
        }
      });
    },);
  }
}
