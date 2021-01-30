import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefaultHomeButton extends StatelessWidget {
  const DefaultHomeButton({
    Key key, this.buttonText, this.onPressed,
  }) : super(key: key);

  final String buttonText ;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: kPrimaryColor,
        onPressed: onPressed,child: Text(buttonText,
        style: TextStyle(
            fontSize:getProportionateScreenHeight(18),
            color: Colors.white
        ),
      ),
      ),
    );
  }
}

