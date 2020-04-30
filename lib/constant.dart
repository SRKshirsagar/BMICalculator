import 'package:flutter/material.dart';
//import 'package:flutter/src/material/button.dart';

const bottomContainerHeight = 60.0;
const activeCardColor = Color(0xff1D1E33);
const inactiveColor= Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender{
  male,
  female,
}

const contentStyle=TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98)
          );

const kNumberTextStyle=TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900
                            );

const kLargeLablestyle=TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                            );

const kResultTitleStyle=TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold
);

const kResultTextStyle=TextStyle(
  fontSize: 22.0,
  color: Color(0xFF24D876),
  fontWeight: FontWeight.bold
);

const kBMIResultStyle=TextStyle(
  fontSize: 90.0,
  fontWeight: FontWeight.bold
);

const kResultBodyStyle=TextStyle(
  fontSize: 22.0,
);


class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon,@required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child:Icon(icon) ,
      shape:CircleBorder(),
      elevation: 5.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}