import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        
        children: <Widget>[
          Card(
        child: Column(
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('thiskartik'),
            ),
            Container(
              color: Colors.green,
              child: Text('This is an image/video'),
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
              ],
            )
          ],
        ),
      ),
      //=============
      Card(
        child: Column(
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('thiskartik'),
            ),
            Container(
              color: Colors.green,
              child: Text('This is an image/video'),
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
              ],
            )
          ],
        ),
      ),
        ],
      ),
    );
  }
}