import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/whatsapp/home.dart';

class WhatsApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  WhatsApp( this.cameras );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Whatsapp Clone",
      theme: new ThemeData(
        primaryColor: new Color(0xff128c7e),
        accentColor: new Color(0xff25d366)
      ),
      home: new WhatsAppHome( this.cameras ),
      debugShowCheckedModeBanner: false,
    );
  }
}
