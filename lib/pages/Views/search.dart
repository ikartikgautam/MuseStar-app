import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              color: Colors.white,
              child: Text('This is search Box'),
              height: 40,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 10)),
          Container(
            child: CustomScrollView(slivers: <Widget>[
              SliverGrid(
                delegate: SliverChildListDelegate(
                  [
                   Text('data'),
                   Text('data'),
                   Text('data'),
                   Text('data'),
                   Text('data')
                  ],
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
              )
            ]),
            width: double.infinity,
            margin: EdgeInsets.all(5),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
