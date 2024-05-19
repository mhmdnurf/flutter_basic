import 'package:flutter/material.dart';
import 'package:flutter_basic/layout_demo/title_section.dart';
import 'package:flutter_basic/layout_demo/image_section.dart';
import 'package:flutter_basic/layout_demo/button_section.dart';
import 'package:flutter_basic/layout_demo/text_section.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Flutter layout demo";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
            centerTitle: true,
            titleTextStyle: const TextStyle(
                fontFamily: "Poppins",
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                ImageSection(
                  image:
                      'https://images.unsplash.com/photo-1530122037265-a5f1f91d3b99?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                TitleSection(
                  name: 'Oeschinen Lake Campground',
                  location: 'Kandersteg, Switzerland',
                ),
                ButtonSection(),
                TextSection(
                  description:
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                ),
              ],
            ),
          )),
      // home: const LayoutBestPracticesPage(),
    );
  }
}
