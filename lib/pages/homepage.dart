import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indolent Rock"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(
              color: Colors.deepPurple,
            ))),
            width: 200,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.home,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    "Página Incial",
                    style: TextStyle(color: Colors.lightGreenAccent),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tutoriais",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.python,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Python e SIG",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.map, color: Colors.deepOrange),
                  title: Text(
                    "QGIS",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
