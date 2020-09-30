import 'package:flutter/material.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget carouselPage(String imgUrl, String description, Color color) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imgUrl),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GooeyCarousel(
        children: [
          carouselPage(
              "assets/page1.png", "Create your own notes", Colors.green),
          carouselPage(
              "assets/page2.png", "Share your notes with friends", Colors.blue),
          carouselPage(
              "assets/page3.png",
              "Protect your data with our authentication system",
              Colors.purple[200]),
        ],
      ),
    );
  }
}
