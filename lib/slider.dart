import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const new({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "value is ${num.toStringAsFixed(0)}",
              style: TextStyle(fontSize: 40),
            ),
            Slider(
              value: num,
              label: "$num",
              min: 0,
              max: 100,
              onChanged: (value) {
                num = value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
