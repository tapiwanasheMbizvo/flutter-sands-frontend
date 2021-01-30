import 'package:flutter/material.dart';
import 'package:flutter_lessons/components/customer_suffix_svg_icons.dart';
import 'package:flutter_lessons/components/defaultSplashButton.dart';
import 'package:flutter_lessons/components/form_errors.dart';
import 'package:flutter_lessons/components/social_card.dart';
import 'package:flutter_lessons/screens/login/components/login_form.dart';
import 'package:flutter_lessons/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: SizedBox(
        width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
              children : [
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Text(
                  "Welcome to Sands",
                  style: TextStyle(//color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold
                  ),
                  ),
                Text("Use your Email and Password\n to Continue with Sands..",
                  textAlign: TextAlign.center,
                 
                ),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                LoginForm(),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                //SizedBox(height: getProportionateScreenHeight(10) ),
               Row(

                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SocialIcon(
                     iconSvg: "assets/icons/google-icon.svg",
                     onPressed: (){},
                   ),

                   SocialIcon(
                     iconSvg: "assets/icons/facebook-2.svg",
                     onPressed: (){},
                   ),
                 ],
               ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(fontSize:getProportionateScreenWidth(16)
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize:getProportionateScreenWidth(16),
                        color: kPrimaryColor
                      ),
                    ),
                  ],
                )
              ],
        ),
            ),
          ),
      ),
    );
  }
}







