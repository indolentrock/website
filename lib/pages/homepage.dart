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
  bool isPressed = true;
  bool isPressedPython = false;
  bool isQgis = false;
  @override
  Widget build(BuildContext context) {
    //TODO width with provider
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("Idolent Rock"),
        ),
        body: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.black12,
                child: Column(
                  children: [
                    FlatButton(
                      highlightColor: Colors.blue,
                      color: isPressed ? Colors.black12 : null,
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                          isPressedPython = false;
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
                      color: isPressedPython ? Colors.black12 : null,
                      onPressed: () {
                        setState(() {
                          isPressed = false;
                          isPressedPython = true;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 3.0,
                                  color: isPressedPython
                                      ? Colors.lightBlueAccent
                                      : Colors.black12)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.python,
                              color: isPressedPython
                                  ? Colors.lightBlueAccent
                                  : Colors.grey,
                            ),
                            SizedBox(height: 20),
                            Text("Python + SIG")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isPressed)
              Flexible(
                flex: 6,
                child: ListView(
                  children: [
                    Image.network(""),
                  ],
                ),
              )
            else if (isPressedPython)
              Flexible(
                flex: 6,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Rasters"),
                    ),
                    Card(
                      color: Colors.lightGreenAccent,
                      child: ListTile(
                        trailing: Text("Fácil"),
                        title: Text("Tutorial 1 "),
                        subtitle: Text("Pandas, Geopandas"),
                      ),
                    ),
                    Card(
                      color: Colors.lightGreenAccent,
                      child: ListTile(
                        trailing: Text("Fácil"),
                        title: Text("Tutorial 1 "),
                        subtitle: Text("Pandas, Geopandas"),
                      ),
                    ),
                    Card(
                      color: Colors.purpleAccent,
                      child: ListTile(
                        trailing: Text("Médio"),
                        title: Text("Tutorial 1 "),
                        subtitle: Text("Convertendo"),
                      ),
                    ),
                    Card(
                      color: Colors.orange,
                      child: ListTile(
                        trailing: Text("Difícil"),
                        title: Text("Tutorial 1 "),
                        subtitle: Text("Convertendo"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Vetores"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Landsat"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Sentinel"),
                    ),
                  ],
                ),
              )
          ],
        ));
  }
}
