import 'package:flutter/material.dart';
import 'package:testingthings/pages/Call_Screen.dart';
import 'package:testingthings/pages/Camera_Screen.dart';
import 'package:testingthings/pages/Chats_Screen.dart';
import 'package:testingthings/pages/Status_Screen.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 2.0)),
        ],

      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
           new CameraScreen(),
           new ChatScreen(),
           new StatusScreen(),
           new CallsScreen(),
        ]
    ),
      floatingActionButton: new FloatingActionButton(onPressed: ()=>print("open Chats"),
       backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message,
        color: Colors.white,
        ),
      ),
    );
  }
}
