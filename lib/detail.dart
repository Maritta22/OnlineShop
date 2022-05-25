import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHome(),
    );
  }
}

class ListViewHome extends StatelessWidget {
  var date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mentari Celluer Phone'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.ibb.co/89VgCmF/a21.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('Samsung Galaxy 21s', style: TextStyle(fontSize: 20.0)),
            ),
            Container(
              height: 50,
              child: Text('Rp 245.000', style: TextStyle(color: Colors.orange, fontSize: 30)),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('Stok Tersedia', style: TextStyle(fontSize: 20.0)),
            ),
          ],
        ));
  }
}
