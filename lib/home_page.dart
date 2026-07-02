import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_demo/Pages/login.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Welcome :D',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.red, fontFamily: 'Main'),
            ),

            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey.withOpacity(0.4)),
                child: Center(
                  child: Text(
                    'ENTER',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red, fontFamily: 'Secondary'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
