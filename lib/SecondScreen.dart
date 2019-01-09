import 'package:flutter/material.dart';
import 'package:flutter_app/GridLayout.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Screen"),),
        body: ListView.builder(itemBuilder: (context, position){
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Element $position"),
            subtitle: Text("Subtitle $position"),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                return GridLaouy(position);
              }));
            },
          );
        },
          itemCount: 20,
          reverse: true,)
    );
  }
}