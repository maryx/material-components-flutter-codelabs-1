import 'package:flutter/material.dart';

import 'colors.dart';
import 'supplemental/notched_corner_border.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Widget _buildLogo() {
    return Column(
      children: <Widget>[
        Image.asset('assets/diamond.png'),
        const SizedBox(height: 16.0),
        Text(
          'SHRINE',
          style: Theme.of(context).textTheme.headline,
        ),
      ],
    );
  }

  Widget _buildButtonBar() {
    return ButtonBar(
      children: <Widget>[
        FlatButton(
          child: Text('CANCEL'),
          // TODO add notch 2
          onPressed: () {
            _usernameController.clear();
            _passwordController.clear();
          },
        ),
        RaisedButton(
          child: Text('NEXT'),
          elevation: 8.0,
          // TODO add notch 2
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  // TODO Demo 1 start
//  Widget _buildTextField(
//      String label, TextEditingController controller, bool obscureText) {
//    return new TextField(
//      controller: controller,
//      decoration: new InputDecoration(
//        labelText: label,
//      ),
//    );
//  }

  // TODO Demo 1 result
  Widget _buildTextField(
      String label, TextEditingController controller, bool obscureText) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: brown900),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
        ),
        obscureText: obscureText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO step 0: Start here
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            _buildLogo(),
            SizedBox(height: 120.0),
            _buildTextField('Username', _usernameController, false),
            SizedBox(height: 12.0),
            _buildTextField('Password', _passwordController, true),
            _buildButtonBar(),
          ],
        ),
      ),
    );
  }
}
