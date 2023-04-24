import 'dart:io';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  FlutterError.onError = (details){
    FlutterError.presentError(details);
    if(kReleaseMode) exit(1);
  };
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
