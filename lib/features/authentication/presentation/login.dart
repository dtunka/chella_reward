import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        child:Padding(
          padding: EdgeInsets.all(20),
          child:Column(
            children: [
              SizedBox(height:30),
              Text('Chella', style: TextStyle(fontSize:26,color:Colors.yellow)),
              SizedBox(height:10),
              Text(
                'Welcome back to your rewards', style:TextStyle(fontSize:24,color:Colors.white60)
              )
            ],)
          ),)
    );
  }
}
