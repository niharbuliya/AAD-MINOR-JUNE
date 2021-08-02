import 'package:flutter/material.dart';
import 'package:task3/register.dart';

import 'login_screen.dart';


class FrontScreen extends StatelessWidget {
  // const FrontScreen({Key? key}) : super(key: key);
  static const routeName = '/frontScreen';
  Color _color1 = Color.fromRGBO(73, 235, 166, 1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ClipRRect(
          borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(300, 50)),
          child: Container(
            color: _color1,
            child: Column(
              children: [
                Container(
                  
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: Text('GO',
                          style: TextStyle(
                              color: _color1,
                              fontWeight: FontWeight.bold,
                              fontSize: 125)),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: TextButton(
                        child: Text('Login',
                            style: TextStyle(fontSize: 25, color: _color1)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(18)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).errorColor,
                            ),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40.0),
                                        side: BorderSide(
                                          color: _color1,
                                        )))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            LoginScreen.routeName,
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: TextButton(
                        child: Text('Register',
                            style: TextStyle(fontSize: 25, color: Colors.white)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(18)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(_color1),
                             foregroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).errorColor,
                            ),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40.0),
                                        side: BorderSide(
                                          color: Colors.white,
                                        )))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            RegisterScreen.routeName,
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
