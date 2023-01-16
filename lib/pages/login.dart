import 'package:flutter/material.dart';

//class is a blueprint. In a class there are many memebers, methods(functionality) & properties 
class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("LoginPage",style: TextStyle(
          fontSize: 30, 
          color: Colors.blue
          fontWeight: FontWeight.bold
          )
        ),
    //har widget ki apni key hoti h
      ),
    );
  }
}