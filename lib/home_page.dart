import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              'Welcome to the app',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
            ),

            InkWell(
              onTap: () {
                print('click');
              },
              child: Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey.withOpacity(0.4)),
                child: Center(
                  child: Text(
                    'ENTER',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
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
