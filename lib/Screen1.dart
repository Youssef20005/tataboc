import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftimage=1;
  int rightimage=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تطابق صورة',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo[800],
      ),
      body: Container(
        color: Colors.indigo,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              leftimage==rightimage?'تطابق ':
              'حاول مره اخري',
              style: TextStyle(fontSize: 42, color: Colors.white),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftimage=Random().nextInt(8)+1;
                          rightimage=Random().nextInt(8)+1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset('images/image-$leftimage.png'),
                      )),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftimage=Random().nextInt(8)+1;
                          rightimage=Random().nextInt(8)+1;
                        });
                      },
                      child: Image.asset('images/image-$rightimage.png')),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
