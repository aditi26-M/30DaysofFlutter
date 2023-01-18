import 'package:flutter/material.dart';

//class is a blueprint. In a class there are many memebers, methods(functionality) & properties
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "UserName"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }, child: Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class MyRoutes {
  static String loginRoute = "/Login";
  static String homeRoute = "/home";  
}
