import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
 
 IconContent({this.icon,this.lable});

 final IconData icon;
 final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(height: 10.0,),
        Text(
          lable,
          style: contentStyle
        )
      ],
    );
  }
}
