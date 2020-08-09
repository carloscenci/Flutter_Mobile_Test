import 'package:flutter/material.dart';
import 'package:new_project/components/base_layout.dart';
import 'package:new_project/components/drawer_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Testando",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          centerTitle: true,
          // leading: Icon(Icons.adjust),
          title: Text(
            "Meu App",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.accessible), onPressed: () {}),
            IconButton(icon: Icon(Icons.view_day), onPressed: () {})
          ],
        ),
        body: BaseLayout(),
        drawer: DrawerWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

//MediaQuery.of(context).size.height
