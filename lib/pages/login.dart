import 'package:flutter/material.dart';

//class is a blueprint. In a class there are many memebers, methods(functionality) & properties
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final  _formKey = GlobalKey<FormState>();

  //method - moveToHome
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
    setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(Duration(seconds: 2));
                          await Navigator.pushNamed(context, MyRoutes.homeRoute);
          
                          setState(() {
                            changeButton = false;
                          }
                          );
    } 
  }


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_img.png",
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter username",
                          labelText: "UserName",
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },



                        onChanged: (value) {
                          name = value;
          
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "Password"
                            ),

                            validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }

                          else if (value.length < 8) {
                            return "Password cannot be less than 8";
                          }

                          return null;
                        },

                      ),


                      const SizedBox(
                        height: 30,
                      ),
                      Material(
                        color: Colors.lightBlue,
                        borderRadius:
                                    BorderRadius.circular(changeButton ? 50 : 16),
                       
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          
                          child: AnimatedContainer(
                            duration: Duration(seconds: 2),
                            alignment: Alignment.center,
                            height: 40,
                            width: changeButton ? 40 : 130,
                            child: changeButton ? Icon(Icons.done, color: Colors.white,) : const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          
                          //  decoration: BoxDecoration(
                          //      color: Colors.lightBlue,
                                
                          // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                                
                                    ),
                          ),
                        ),
                    ],
                    /*
                      ElevatedButton(
                          onPressed: {Navigator.pushNamed(context, MyRoutes.homeRoute);},
                          child: const Text("Login"))
                          */
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class MyRoutes {
  static String loginRoute = "/Login";
  static String homeRoute = "/home";
}
