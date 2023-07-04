import 'package:flutter/material.dart';
import 'package:tataboc/Screen1.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(app());
}
class app extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage()

    );
  }
}
