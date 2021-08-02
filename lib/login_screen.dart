import 'package:flutter/material.dart';
import 'package:task3/welcome_screen.dart';

import 'drawer2.dart';
import 'front_screen.dart';

//import '../widget/detailscreen.dart';
class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/LoginScreen';
  Color _color1 = Color.fromRGBO(73, 235, 166, 1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: _color1,
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                child: Stack(
                  children: [
                    Container(
                      // color: _color1,
                      color: Colors.white,
                      width: double.infinity,
                      height: double.infinity,

                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              width: 200,
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: _color1,
                                  child: Text('LOGIN',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 37)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    color: _color1,
                                  ),
                                  hintText: 'EMAIL',
                                  hintStyle: TextStyle(color: _color1),
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(color: _color1)),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide:
                                        BorderSide(color: _color1, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide:
                                        BorderSide(color: _color1, width: 2),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: _color1,
                                  ),
                                  hintText: 'PASSWORD',
                                  hintStyle: TextStyle(color: _color1),
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(color: _color1)),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide:
                                        BorderSide(color: _color1, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide:
                                        BorderSide(color: _color1, width: 2),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.09),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                child: TextButton(
                                    child: Text('Login',
                                        style: TextStyle(
                                            fontSize: 26, color: Colors.white)),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(18)),
                                        // backgroundcolor: Colors.white,
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                _color1),
                                        // foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                          Theme.of(context).errorColor,
                                        ),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                                side: BorderSide(
                                                  color: _color1,
                                                )))),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        WelcomeScreen.routeName,
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.cancel_sharp,
                          color: _color1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
