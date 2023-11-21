import 'package:flutter/material.dart';
import 'package:whatsappcolone/common/utils/color.dart';
import 'package:whatsappcolone/common/widgets/custom_button.dart';
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset("assets/images/backgroundImage.png",fit: BoxFit.fitHeight,)
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60,),
                const Text("Welcome to WhatsApp",style: TextStyle(fontSize: 33,fontWeight: FontWeight.w600,color: textColor),),
                SizedBox(height: size.height/9,),
                Image.asset('assets/images/bg.png',height: 340,width: 340,color: tabColor,),
                SizedBox(height: size.height/9,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('''Read Our Privacy Policy Tap "Agree and Continue" to accept Terms of Service''',style: TextStyle(color: Colors.grey,fontSize: 18),textAlign: TextAlign.center,),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                    width: size.width*0.75,
                    height: 50,
                    child: CustomButton(text: "AGREE AND CONTINUE", onPressed: (){})
                )
              ],
            ),
          ],

        ),
      ),
    );
  }
}
