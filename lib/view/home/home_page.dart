import 'dart:math';
import 'package:flutter/material.dart';
import 'component/welcome_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isAnimationType = false;
  Color bgColor = const Color.fromARGB(255, 23, 79, 128);

  generateRandomColor(bool isAnimationType) {
    _isAnimationType = isAnimationType;
    setState(() {
      Random random = Random();
      bgColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          generateRandomColor(false);
        },
        child: _isAnimationType
            ? AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: bgColor,
                child: const WelcomeWidget(),
              )
            : Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: bgColor,
                child: const WelcomeWidget(),
              ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          generateRandomColor(true);
        },
        child: const Text("Change with Animation"),
      ),
    );
  }
}
