import 'package:assignment_3/productlist.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
                child: Text(
              'Ecom App UI',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
          ),
          body: ProductList(),
        ));
  }
}
