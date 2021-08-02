import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/provider/user_data.dart';
import 'package:task3/welcome_screen.dart';
import 'package:task3/front_screen.dart';

import 'drawer2.dart';

class RegisterScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/RegisterScreen';
  TextEditingController _displaynamecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
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
                                  child: Text('REGISTER',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _displaynamecontroller,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: _color1,
                                  ),
                                  hintText: 'DISPLAY NAME',
                                  hintStyle: TextStyle(color: _color1),
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
                                controller: _emailcontroller,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    color: _color1,
                                  ),
                                  hintText: 'EMAIL',
                                  hintStyle: TextStyle(color: _color1),
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
                                obscureText: true,
                                controller: _passwordcontroller,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: _color1,
                                  ),
                                  hintText: 'PASSWORD',
                                  hintStyle: TextStyle(color: _color1),
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
                                    MediaQuery.of(context).size.height * 0.07),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                child: TextButton(
                                    child: Text('CREATE ACCOUNT',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white)),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(18)),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                _color1),
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
                                      Provider.of<UserInfo>(context,
                                              listen: false)
                                          .register(
                                              _displaynamecontroller.text,
                                              _passwordcontroller.text,
                                              _emailcontroller.text);
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
