import 'package:flutter/material.dart';

class HomeScreenButtons extends StatefulWidget {
  String text;

  HomeScreenButtons(this.text);

  @override
  _HomeScreenButtonsState createState() => _HomeScreenButtonsState();
}

class _HomeScreenButtonsState extends State<HomeScreenButtons> {
  bool ispressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * 0.3,
      height: 50,
      textColor: Colors.deepPurple,
      color: Colors.transparent,
      onPressed: () {},
      child: Text(
        "${widget.text}",
        style: TextStyle(fontSize: 20),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.deepPurple, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(30.0)),
    );
  }
}
