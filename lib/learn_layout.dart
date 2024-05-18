import 'package:flutter/material.dart';

class LearnLayout extends StatelessWidget {
  const LearnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LearnLayoutPage(),
    );
  }
}

class LearnLayoutPage extends StatelessWidget {
  const LearnLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Flutter Layout Demo"),
          centerTitle: true,
          backgroundColor: Colors.white,
          // toolbarHeight: 100,
          titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  "https://images.unsplash.com/photo-1530122037265-a5f1f91d3b99?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Oeschinen Lake Campground",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                          Text(
                            "Kanderstag, Switzerland",
                            style: TextStyle(
                                fontFamily: "Poppins", color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.red),
                          Text(
                            "41",
                            style: TextStyle(fontFamily: "Poppins"),
                          )
                        ],
                      ),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.call,
                            color: Colors.purple,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            child: const Text("CALL",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.purple)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.near_me,
                            color: Colors.purple,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            child: const Text("ROUTE",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.purple)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.share,
                            color: Colors.purple,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            child: const Text("SHARE",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.purple)),
                          )
                        ],
                      ),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(bottom: 100),
                child: const Text(
                  "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                  softWrap: true,
                ),
              )
            ],
          ),
        ));
  }
}
