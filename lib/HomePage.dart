import 'package:flutter/material.dart';

import 'Baners.dart';
import 'Nav_bar/NavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Nave_Bar(),
            ),
            Container(
              child: Baners(),
            )
          ],
        ),
      ),
    );
  }
}
