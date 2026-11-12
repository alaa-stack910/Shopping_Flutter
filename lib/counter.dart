import 'package:basic_statefull/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    //var providerObject =Provider.of<CounterProvider>(context, listen: false) ;
    var providerObject = context.read<CounterProvider>();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, value, child) => Text("${value.counter}"),
            ),

            Row(
              mainAxisAlignment: .center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    providerObject.increaseCounter();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 50),
                FloatingActionButton(
                  onPressed: () {
                    providerObject.decreaseCounter();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),

            SizedBox(width: 50),
            FloatingActionButton(
              onPressed: () {
                providerObject.resetCounter();
              },
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
