//https://picsum.photos/200/300   // ⌘ ñ
//use lint
//import '../widget/detailscreen.dart';
// #84E3CF
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task3/add_address.dart';
// import 'package:flutter/services.dart';
import 'package:task3/drawer.dart';
import 'package:task3/drawer2.dart';
import 'package:task3/provider/user_data.dart';
import 'package:task3/welcome_screen.dart';
import 'package:task3/front_screen.dart';
import 'package:task3/register.dart';
import 'package:task3/user_account.dart';
import 'login_screen.dart';

void main() {
// SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//     systemNavigationBarColor: Colors.transparent,

//   ));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserInfo(),
      child: MaterialApp(
        title: 'homepage',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.green,
            accentColor: Colors.green,
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colors.green,
              selectionColor: Colors.green,
              selectionHandleColor: Colors.green,
            )),
        home: FrontScreen(),
        routes: {
          FrontScreen.routeName: (ctx) => FrontScreen(),
          LoginScreen.routeName: (ctx) => LoginScreen(),
          RegisterScreen.routeName: (ctx) => RegisterScreen(),
          UserAccount.routeName: (ctx) => UserAccount(),
          Add_Address.routeName: (ctx) => Add_Address(),
          MyDrawer2.routeName: (ctx) => MyDrawer2(),
          WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
        },
      ),
    );
  }
}
