import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'insta_body.dart';

class InstaHome extends StatelessWidget {

  final topBar = AppBar(
    backgroundColor: Color(0xFFf8faf8),
    centerTitle: true,
    elevation: 1,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
        child: Image.asset("assets/image/instagram.jpg"),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                ),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
