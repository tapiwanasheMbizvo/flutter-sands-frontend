import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lessons/components/defaultSplashButton.dart';
import 'package:flutter_lessons/constants.dart';
import 'package:flutter_lessons/screens/login/login_screen.dart';
import 'package:flutter_lessons/screens/splash/components/splash_content.dart';
import 'package:flutter_lessons/size_config.dart';

class Body extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Body> {

  int currentPage = 0;
  List<Map<String, String>> splashDetails = [

    {
      "text": "Welcome to Sands, Let's Shop",
      "image": "assets/images/splash_1.png",
    },

    {
      "text": "We bring your close to Business around Zimbabwe",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "Wide range of products",
      "image": "assets/images/splash_3.png",
    }


  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
              child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage= value;
                  });
                } ,
                itemCount: splashDetails.length,
                  itemBuilder: (contenxt, index)=>SplashContent(
                image: splashDetails[index]["image"],
                text: splashDetails[index]["text"],
              ))
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal:getProportionateScreenWidth(20) 
                  ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashDetails.length,
                              (index) => buildDot(index),
                      ),

                  ),
                    Spacer(flex: 3),
                    DefaultHomeButton(
                      buttonText: "Continue",
                      onPressed:(){
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      } ,
                    ),
                    Spacer(),
                  ],

                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(

      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage==index? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage==index? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),

      ),
    );
  }
}

