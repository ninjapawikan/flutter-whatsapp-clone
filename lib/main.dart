import 'dart:async';

import 'package:flutter/material.dart';
import 'WhatsApp.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new WhatsApp( cameras ));
}
