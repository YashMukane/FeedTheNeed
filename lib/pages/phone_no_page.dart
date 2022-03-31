
import 'package:magic_sdk/magic_sdk.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Magic magic = Magic.instance;

  final textController = TextEditingController(text: '+91');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Magic Demo Login'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: TextFormField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'Enter your number',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () async {
              var token =
                  await magic.auth.loginWithSMS(phoneNumber: textController.text);
              debugPrint('token, $token');

              if (token.isNotEmpty) {
                /// Navigate to your home page
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const HomePage()));
              }
            },
            child: const Text('Login With Phone Number'),
          ),
        ])));
  }
}