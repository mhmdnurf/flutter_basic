import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
      home: const SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: SvgPicture.asset(
          "assets/img/test.svg",
          semanticsLabel: 'Acme Logo',
          height: 300,
        )),
        Container(
          margin: const EdgeInsets.all(20),
          child: const Text(
            "Let's Play the Game",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ));
  }
}
