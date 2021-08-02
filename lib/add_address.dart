import 'package:flutter/material.dart';

//import '../widget/detailscreen.dart';
class Add_Address extends StatelessWidget {
  // const Add_Address({Key? key}) : super(key: key);
  static const routeName = '/Add_Address';
  // late String input;
  @override
  Widget build(BuildContext context) {
    final _padding = const EdgeInsets.all(8);

    InputDecoration inputDecoration(String input) {
      return InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 2),
          ),
          focusColor: Colors.green,
          hintText: input,
          hintStyle: TextStyle(color: Colors.green));
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Address'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: inputDecoration('Full Name'),
                // maxLines: 2,
                // keyboardType: TextInputType.multiline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: inputDecoration('House no /Building Name*'),
                // maxLines: 2,
                keyboardType: TextInputType.multiline,
              ),
            ),
            Padding(
              padding: _padding,
              child: TextFormField(
                decoration: inputDecoration('Locality'),
                maxLines: 2,
                keyboardType: TextInputType.multiline,
              ),
            ),
            Padding(
              padding: _padding,
              child: TextFormField(
                decoration: inputDecoration('City'),
                // maxLines: 2,
                // keyboardType: TextInputType.multiline,
              ),
            ),
            Padding(
              padding: _padding,
              child: TextFormField(
                decoration: inputDecoration('Pincode'),
                keyboardType: TextInputType.number,
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                child: TextButton(
                    child: Text('ADD ACCOUNT',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(18)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide()))),
                    onPressed: () {}),
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
