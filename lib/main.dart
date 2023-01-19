import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                // alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: Color.fromARGB(255, 251, 135, 206),
              ),
            ),

//Section 2
            //Part 1
            Expanded(
                flex: 6,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Color.fromARGB(255, 241, 250, 118),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Color.fromARGB(255, 191, 170, 255),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Color.fromARGB(255, 118, 250, 193),
                              ),
                            ),
                          ],
                        )),

                    //Part 2
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        color: Color.fromARGB(255, 210, 118, 250),
                      ),
                    ),

                    //Part 3
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Color.fromARGB(255, 118, 246, 250),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                alignment: Alignment.center,
                                //height: 50,
                                // width: 10,
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Color.fromARGB(255, 245, 188, 114),
                              ),
                            ),
                          ],
                        )),
                  ],
                )),

//Section 3
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                //height: 100,
                //width: 50,
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(255, 255, 109, 109),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
