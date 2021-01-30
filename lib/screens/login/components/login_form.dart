import 'package:flutter/material.dart';
import 'package:flutter_lessons/components/customer_suffix_svg_icons.dart';
import 'package:flutter_lessons/components/defaultSplashButton.dart';
import 'package:flutter_lessons/components/form_errors.dart';
import 'package:flutter_lessons/constants.dart';
import 'package:flutter_lessons/size_config.dart';



class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
  bool rememberMe= false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //SizedBox(height: getProportionateScreenHeight(10) ),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30) ),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          //remember me , forgot password
          Row( 
            
            children: [
              Checkbox(
                  value: rememberMe,
                  activeColor: kPrimaryColor,
                  onChanged: (value){
                setState(() {
                  rememberMe =value;
                });
              }),
              Text("Remember Me"),
              Spacer(),
              Text(
                "Forgot Password",
                style: TextStyle(
                    decoration: TextDecoration.underline
                ),
                ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultHomeButton(
            buttonText: "Continue",
            onPressed:  (){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();

                //do login
              }
            },
          ),

        ],
      ),

    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue)=> password= newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        }else if (value.length>=8&& errors.contains(kShortPassError)){

          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
        }else if (value.length<8&& !errors.contains(kShortPassError)){

          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Please Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),

      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue)=> email= newValue, //setting the email to inputed data
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }else if (emailValidatorRegExp.hasMatch(value)&& errors.contains(kInvalidEmailError)){

          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
        }else if (!emailValidatorRegExp.hasMatch(value)&& !errors.contains(kInvalidEmailError)){

          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Please Enter Your Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),

      ),
    );
  }



}