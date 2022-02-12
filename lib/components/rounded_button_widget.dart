import 'package:flutter/material.dart';

//ignore: must_be_immutable
class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      @required this.color,
      @required this.routeName,
      @required this.buttonText})
      : super(key: key);

  Color? color;
  String? routeName;
  String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            //Go to login screen.
            Navigator.pushNamed(context, routeName!);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(buttonText!),
        ),
      ),
    );
  }
}
