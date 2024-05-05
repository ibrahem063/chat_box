import 'package:chat_box/widgets/custom_input_fields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late double deviceHeight;
  late double deviceWidth;

  final _loginFormKye = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return _bulidUI();
  }

  Widget _bulidUI() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.03, vertical: deviceHeight * 0.02),
        height: deviceHeight * 0.98,
        width: deviceWidth * 0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _pageTitle(),
            SizedBox(height: deviceHeight*0.04,),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return SizedBox(
      height: deviceHeight * 0.1,
      child: const Text(
        'ChatBox',
        style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _loginForm() {
    return SizedBox(
      height: deviceHeight * 0.18,
      child: Form(
        key: _loginFormKye,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomFormField(
                onSave: (value) {},
                regEx:
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                hintText: "Email",
                obscureText: false),
            CustomFormField(
              onSave: (value) {
                  setState(() {
                // _password = value;
              });
            },
                regEx: r".{8,}",
                hintText: "Password",
                obscureText: true,)
          ],
        ),
      ),
    );
  }
}
