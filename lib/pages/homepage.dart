import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Row(children: [
            Icon(FontAwesomeIcons.bars),
          ]),
        ),
        body: Row(
          children: [
            Flexible(
              child: Container(
                width: 200,
                color: Colors.black12,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    FlatButton(
                      color: isPressed ? Colors.black12 : null,
                      onPressed: () {
                        setState(() {
                          if (isPressed)
                            isPressed = false;
                          else
                            isPressed = true;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 3.0,
                                  color: isPressed
                                      ? Colors.lightBlueAccent
                                      : Colors.black12)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.home,
                              color: isPressed
                                  ? Colors.lightBlueAccent
                                  : Colors.grey,
                            ),
                            SizedBox(height: 20),
                            Text("Página Incial")
                          ],
                        ),
                      ),
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(color: Colors.lightBlue),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Tutorials",
                          style: TextStyle(color: Colors.deepOrangeAccent),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.lightBlue,
                        ),
                      )),
                    ]),
                    FlatButton(
                      highlightColor: Colors.blue,
                      onPressed: () {},
                      child: Container(
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.python,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 20),
                            Text("Python + SIG")
                          ],
                        ),
                      ),
                    ),
                    FlatButton(
                      highlightColor: Colors.blue,
                      onPressed: () {},
                      child: Container(
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mapMarkedAlt,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 20),
                            Text("QGIS")
                          ],
                        ),
                      ),
                    ),
                    FlatButton(
                      highlightColor: Colors.blue,
                      onPressed: () {},
                      child: Container(
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.robot,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 20),
                            Text("Machine/Deep Learning")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: ListView(
                children: [],
              ),
            )
          ],
        ));
  }
}
