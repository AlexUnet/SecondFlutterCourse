import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          leading: IconButton(
            icon: Icon(Icons.zoom_in),
            onPressed: () {
              print("leading");
            },
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () {
                  print("hielito < : v");
                }),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("CUADRADO"),
              alignment: Alignment.center,
              color: Colors.orange,
              height: 100,
              width: 100,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          splashColor: Colors.red,
          child: Container(
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://media1.giphy.com/media/KQ48HWui8FNIs/giphy.gif'),
                    fit: BoxFit.fill,
                  ))),
        ),
        drawer: Drawer(),
        endDrawer: Drawer(),
      ),
    );
  }
}

class Calculator {
  static int a = 1;
  int b;

  static int suma(int numero) {
    return a + numero;
  }
}
