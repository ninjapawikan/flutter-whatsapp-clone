import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/models/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  @override
  ChatsScreenState createState() {
    return new ChatsScreenState();
  }
}

class ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: DummyData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider( height: 10.0,),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage( DummyData[i].avatar),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text( DummyData[i].name, style: new TextStyle(fontWeight: FontWeight.bold),),
                new Text( DummyData[i].time, style: new TextStyle(fontSize: 14.0, color: Colors.grey) )
              ],
  
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                DummyData[i].message,
                style: new TextStyle(fontSize: 14.0, color: Colors.grey) 
              )
            ),
          )
        ],
      ),
    );
  }
}