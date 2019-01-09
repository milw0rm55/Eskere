import 'package:flutter/material.dart';

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
              showDialog(
                  context: context,
                  builder: (c) {
                    return AlertDialog(content:Text("Has pulsado el item $position"),
                    );
                  }
              );
            },
          );
        },
          itemCount: 20,
          reverse: true,)
    );
  }
}
