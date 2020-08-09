import 'package:flutter/material.dart';
import 'package:new_project/pages/home_page.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                        ? Colors.blue[300]
                        : Colors.white,
                child: Text("C"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.lightBlue[900],
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
    );
  }
}
