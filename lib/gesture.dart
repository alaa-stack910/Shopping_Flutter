import 'package:flutter/material.dart';

class GestureAnimated extends StatefulWidget {
  const GestureAnimated({super.key});

  @override
  State<GestureAnimated> createState() => _GestureAnimatedState();
}

class _GestureAnimatedState extends State<GestureAnimated> {
  bool isPress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          isPress = !isPress;
          setState(() {});
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          color: isPress ? Colors.blue : Colors.white,
          child: Center(
            child: Text(
              "Hello  there",
              style: TextStyle(color: isPress ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
