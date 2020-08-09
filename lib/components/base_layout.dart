import 'package:flutter/material.dart';
import 'package:new_project/components/card_widget.dart';

class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/coruja.jpg"),
            // colorFilter: ColorFilter.mode(
            // Colors.white.withOpacity(0.2), BlendMode.dstATop,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            CardWidget(),
          ],
        ),
      ),
    );
  }
}
