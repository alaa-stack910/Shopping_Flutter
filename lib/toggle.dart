import 'package:basic_statefull/toggleprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ToggleSwitch extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<Toggleprovider>(
          builder: (context, providerObject, child) => Switch(
            value: providerObject.isToggled,
            onChanged: (value) => providerObject.toggle(value),
          ),
        ),
      ),
    );
  }
}
