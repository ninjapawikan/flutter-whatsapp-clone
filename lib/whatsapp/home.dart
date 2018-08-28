import 'package:whatsapp/whatsapp/screens/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/screens/chats.dart';
import 'package:camera/camera.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome(this.cameras);
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Whatsapp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController, 
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ]),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: SafeArea(
        child: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen( widget.cameras ),
            new ChatsScreen(),
            new Center(
              child: new Text("STATUS"),
            ),
            new Center(
              child: new Text("CALLS"),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print('message'),
      ),
    );
  }
}
