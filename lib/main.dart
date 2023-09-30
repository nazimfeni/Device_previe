import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

  void main() {
    runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const MyApp(),
      ),
    );
  }

  class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  home: HomeScreen(),
  );
  }
  }

  class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
//MediaQuery
  @override
  Widget build(BuildContext context) {
  // Size size = MediaQuery.of(context).size;
  Size size = MediaQuery.sizeOf(context);
  print(size.height);
  print(size.width);
  print(size.aspectRatio);
  print(size.flipped);
  Orientation orientation = MediaQuery.orientationOf(context);
  print(orientation);
  print(MediaQuery.devicePixelRatioOf(context));

  return Scaffold(
  appBar: AppBar(
  title: Text("Expanded Widget"),
  centerTitle: true,
  ),
  body: Column(
  children: [
  Container(
  alignment: Alignment.center,
  //width: MediaQuery.sizeOf(context).width,
  width: double.infinity,
  height: 100,
  color: Colors.purpleAccent,
  child: Text(
  "Fixed size container",
  style: TextStyle(color: Colors.white, fontSize: 24),
  ),
  ),
  Expanded(
  flex: 1,
  child: Container(
  width: MediaQuery.sizeOf(context).width,
  height: MediaQuery.sizeOf(context).width,
  child: Center(
  child: SizedBox(
  width: 300,
  height: 200,
  // Fittedbox is used to keep the text in given space!
  child: FittedBox(
  child: Text(
  'First expaned widget with long sentence to enlarge text area',
  style: TextStyle(color: Colors.white, fontSize: 24),
  ),
  ),
  ),
  ),
  color: Colors.indigo,
  ),
  ),
  Expanded(
  flex: 2,
  child: Container(
  width: MediaQuery.sizeOf(context).width,
  height: MediaQuery.sizeOf(context).width,
  child: Center(
  child: Text(
  'Second Expanded widget',
  style: TextStyle(color: Colors.white, fontSize: 24),
  ),
  ),
  color: Colors.pink,
  ),
  ),
  ],
  ),
  );
  }
  }
//MediaQuery
  @override
  Widget build(BuildContext context) {
  // Size size = MediaQuery.of(context).size;
  Size size = MediaQuery.sizeOf(context);
  print(size.height);
  print(size.width);
  print(size.aspectRatio);
  print(size.flipped);
  Orientation orientation = MediaQuery.orientationOf(context);
  print(orientation);
  print(MediaQuery.devicePixelRatioOf(context));

  return Scaffold(
  appBar: AppBar(
  title: Text("Expanded Widget"),
  centerTitle: true,
  ),
  body: Column(
  children: [
  Container(
  alignment: Alignment.center,
  //width: MediaQuery.sizeOf(context).width,
  width: double.infinity,
  height: 100,
  color: Colors.purpleAccent,
  child: Text("Fixed size container",style: TextStyle(
  color: Colors.white,fontSize: 24
  ),),
  ),
  Expanded(
  flex: 1,
  child: Container(
  width: MediaQuery.sizeOf(context).width,
  height: MediaQuery.sizeOf(context).width,
  child: Center(
  child: SizedBox(
  width: 300,
  height: 200,
  // Fittedbox is used to keep the text in given space!
  child: FittedBox(
  child: Text(
  'First expaned widget with long sentence to enlarge text area',
  style: TextStyle(
  color: Colors.white,fontSize: 24
  ),
  ),
  ),
  ),
  ),
  color: Colors.indigo,
  ),
  ),
  Expanded(
  flex: 2,
  child: Container(
  width: MediaQuery.sizeOf(context).width,
  height: MediaQuery.sizeOf(context).width,
  child: Center(
  child: Text(
  'Second Expanded widget',
  style: TextStyle(
  color: Colors.white,fontSize: 24
  ),
  ),
  ),
  color: Colors.pink,
  ),
  ),
  ],
  ),
  );
  }
