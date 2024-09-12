import 'package:flutter/material.dart';

class Mapprep extends StatefulWidget {
  const Mapprep({super.key});

  @override
  State<Mapprep> createState() => _MapprepState();
}

class _MapprepState extends State<Mapprep> {
  var arrdata = [
    {
      'name': 'shakeel',
      'cellno': '923063440441',
      'unread':'1',
    },
    {
      'name': 'zunair',
      'cellno': '923063440441',
      'unread':'2',
    },
    {
      'name': 'shan',
      'cellno': '923063440441',
       'unread':'3',
    },
    {
      'name': 'uzair',
      'cellno': '923063440441',
       'unread':'4',
    },
    {
      'name': 'umer yameen',
      'cellno': '923063440441',
       'unread':'5',
    },
    {
      'name': 'muneer akhtar',
      'cellno': '923063440441',
       'unread':'6',
    },

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Text(
          'MAPPING LIST',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: arrdata.map((value)=> 
            ListTile(leading: Icon(Icons.account_circle),
          title: Text(value['name'].toString()),
          subtitle:Text(value['cellno'].toString()),
          trailing: CircleAvatar(child: Text(value['unread'].toString())),)
        ).toList()
      ),
    ); 
  }
}