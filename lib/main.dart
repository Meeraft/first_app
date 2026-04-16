import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                // Container 1
                buildNameCard(
                  color: Colors.blue,
                  imagePath: 'images/black-guy-crying-crying.gif',
                ),
                // Container 2
                buildNameCard(
                  color: Colors.green,
                  imagePath: 'images/black-cat-serious-face.gif',
                ),
                // Container 3
                buildNameCard(
                  color: Colors.redAccent,
                  imagePath: 'images/shannon-sharpe-guy-in-tuxedo.gif',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to keep your code clean and reusable
  Widget buildNameCard({required Color color, required String imagePath}) {
    return Container(
      width: 350,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 15), // Spacing from left edge
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 10), // Gap between image and icon
          const Icon(
            Icons.flutter_dash,
            color: Colors.white,
            size: 40,
          ),
          const SizedBox(width: 15), // Spacing between icon and text
          const Expanded(
            child: Text(
              'MUHAMMAD HAMSANI MIKAIL BIN SHAHRIL',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.w900,
                fontSize: 14,
                fontFamily: 'RobotoMono',
              ),
            ),
          ),
          const SizedBox(width: 15), // Spacing from right edge
        ],
      ),
    );
  }
}
