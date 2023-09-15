import 'package:flutter/material.dart';

// [ListTile] demo

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget{
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ListTileExample(),
    );
  }
}

class ListTileExample extends StatelessWidget{
  const ListTileExample({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Sample'),
      ),
      body: ListView(
        children: const<Widget>[
          ListTile(
            leading: CircleAvatar(child: Text('A')),
            title: Text('Head Line'),
            subtitle: Text('Supporting text'),
            trailing: Icon(Icons.favorite_rounded),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(child: Text('B')),
            title: Text('HeadLine'),
            subtitle: Text('Longer supporting text to demonstrate how the text wraps and how the leading and trailing widgets are centered with the text.'),
            trailing: Icon(Icons.favorite_rounded),
          ),
          Divider(height: 0),
    ListTile(
    leading: CircleAvatar(child: Text('C')),
    title: Text('HeadLine'),
    subtitle: Text("'Longer supporting text to demonstrate how setting 'ListTile.isThreeLine = true' aligns leading and trailing widgets to the top vertically with the text  ."),

    trailing: Icon(Icons.favorite_rounded),
    isThreeLine: true,
    ),
          Divider(height: 0,)

        ],
      ),
    );
  }
}