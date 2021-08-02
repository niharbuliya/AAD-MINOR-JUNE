import 'package:flutter/material.dart';

//import '../widget/detailscreen.dart';
// ignore: must_be_immutable
class MyDrawer extends StatelessWidget {
  // const MyDrawer({Key? key}) : super(key: key);
  bool _isupdate = true;
  double phoneno = 1234567890;
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Colors.black, fontSize: 15);
    var colors = Colors.black;
    return Drawer(
      elevation: 40,
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
                Text(
                  phoneno.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Spacer(
                  flex: 6,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
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
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.view_list,
                    color: colors,
                  ),
                  title: Text(
                    'Order History',
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
                      //   'Sample alert',
                      // ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('No'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: Text('Yes,Logout'),
                          onPressed: () {
                            Navigator.pop(context);
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
            ],
          ),
        ],
      ),
    );
  }
}
