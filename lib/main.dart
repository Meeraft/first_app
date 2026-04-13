import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: SafeArea(
            child: Container(
              color: Colors.white, child: Text('MUHAMMAD HAMSANI MIKAIL BIN SHAHRIL', 
              style: TextStyle(color: Colors.yellow, fontWeight: FontWeight(1000)),)
              ,alignment: Alignment.center, width: 350, height: 500, margin: EdgeInsets.symmetric(
              vertical: 10,
                  horizontal: 10
            ),
            ),
          ),
        ),
      ),
    );
  }
}
