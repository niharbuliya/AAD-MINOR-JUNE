import 'package:flutter/material.dart';
// import 'package:task3/user.dart';

//import '../widget/detailscreen.dart';
class UserInfo with ChangeNotifier {
  late String name = 'lorem';
  late String email = 'lorem@gmail.com';
  late String password='.';

  // get userdata {
  //   return -userdata;
  // }
// print(email);
//   print(password);
//   print(name);

  void register(String _name, String _password, String _email) {
    email = _email;
    name = _name;
    password = _password;
    print(email);
    print(password);
    print(name);
    notifyListeners();
  }
}
