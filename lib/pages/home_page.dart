import 'package:flutter/material.dart';
import 'package:new_project/components/base_layout.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.accessible), onPressed: () {}),
          IconButton(icon: Icon(Icons.view_day), onPressed: () {})
        ],
      ),
      body: BaseLayout(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/ravenclaw.jpg'),
                      fit: BoxFit.cover)),
              accountName: Text("Carlos Cenci"),
              accountEmail: Text("carlosc.estevam@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.android
                        ? Colors.blueAccent
                        : Colors.white,
                child: Text("C"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.cyanAccent,
                  child: Icon(Icons.access_alarm),
                )
              ],
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.account_box),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage("Home"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Cadastro"),
              trailing: Icon(Icons.airplay),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
