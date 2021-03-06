import 'package:flutter/material.dart';

class GridLaouy extends StatefulWidget {
  final int position;
  GridLaouy(this.position);

  @override
  _GridLaouyState createState() => _GridLaouyState();
}

class _GridLaouyState extends State<GridLaouy> {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text('item ${widget.position}'),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}

