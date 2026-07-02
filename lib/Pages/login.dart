import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_demo/home_page.dart';

class Login extends StatefulWidget {
  State<StatefulWidget> createState() => _loginState();
}

class _loginState extends State<Login> {
  void crtAcc() {
    print('create');
  }

  void lgnAcc() {
    print('login');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  Widget actionBtn(String id, String title, Color clr) {
    return InkWell(
      onTap: () {
        if (id == 'create') {
          crtAcc();
        } else {
          lgnAcc();
        }
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        width: 300,
        height: 70,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: clr),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 25, fontFamily: 'Secondary', fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('THIS APP \nIS NOT A\nVIRUS', style: TextStyle(fontSize: 50, fontFamily: 'Main')),
            Column(children: [actionBtn('create', 'Create new account', Colors.red.withOpacity(0.7)), SizedBox(height: 15), actionBtn('login', 'Login Existing User', Colors.grey.withOpacity(0.4))]),
          ],
        ),
      ),
    );
  }
}
