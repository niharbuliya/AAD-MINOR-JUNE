import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task3/front_screen.dart';
import 'package:task3/provider/user_data.dart';
import 'package:task3/register.dart';
import 'package:task3/user_account.dart';

class MyDrawer2 extends StatefulWidget {
  // const MyDrawer({Key? key}) : super(key: key);
  static const routeName = '/Drawer2';

  @override
  _MyDrawer2State createState() => _MyDrawer2State();
}

class _MyDrawer2State extends State<MyDrawer2> {
  bool _isupdate = true;

  @override
  Widget build(BuildContext context) {
    final userdata = Provider.of<UserInfo>(context);
    var textStyle = TextStyle(color: Colors.black, fontSize: 15);
    var colors = Colors.black;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 40,
                ),
                Spacer(
                  flex: 2,
                ),
                Container(
                  width: 175,
                  child: Text(
                    userdata.email,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(
                  flex: 6,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      UserAccount.routeName,
                      // arguments: product.id
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                 
                },
                child: ListTile(
                  leading: Icon(
                    Icons.people,
                    color: colors,
                  ),
                  title: Text(
                    'Refer a Friend',
                    style: textStyle,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.view_list,
                    color: colors,
                  ),
                  title: Text(
                    'Purchase History',
                    style: textStyle,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.loop,
                    color: colors,
                  ),
                  title: Text(
                    'Updates',
                    style: textStyle,
                  ),
                  trailing: _isupdate
                      ? Icon(
                          Icons.arrow_circle_down_outlined,
                          // size: 20,
                          color: Theme.of(context).errorColor,
                        )
                      : null,
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(
                        'Are you sure you want to logout ?',
                        style: textStyle,
                      ),
                      // content: Text(
                      //   '     ',
                      // ),
                      actions: <Widget>[
                        TextButton(
                          child: Text(
                            'No',
                            style: textStyle,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: Text(
                            ' Yes',
                            style: textStyle,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              FrontScreen.routeName,
                              // arguments: product.id
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.power_settings_new,
                    color: colors,
                  ),
                  title: Text(
                    'Logout',
                    style: textStyle,
                  ),
                ),
              ),
              InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: colors,
                  ),
                  title: Text(
                    'Help & Support',
                    style: textStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
