import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/login_page.dart';
import '../utils/routes.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,

        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     size: 20,
        //     color: Colors.blue,
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Feed The Need Welcomes YOU! ",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password ", obscureText: true),
                  inputFile(label: "Phone Number "),
                ],
              ),
              // Container(
              //   padding: EdgeInsets.only(top: 3, left: 3),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       border: Border(
              //         bottom: BorderSide(color: Colors.black),
              //         top: BorderSide(color: Colors.black),
              //         left: BorderSide(color: Colors.black),
              //         right: BorderSide(color: Colors.black),
              //       )),
              // child: MaterialButton(
              //   minWidth: double.infinity,
              //   height: 60,
              //   onPressed: () {},
              //   color: Color(0xff0095FF),
              //   elevation: 0,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(35)),
              //   child: Text(
              //     "Sign up",
              //     style: TextStyle(
              //       fontStyle: FontStyle.normal,
              //       fontWeight: FontWeight.w800,
              //       fontSize: 20,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),

              // ),

              ElevatedButton(
                  child: Text(
                    " Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.ButtomBarRoute);
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account ?",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    child: Text(
                      " Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
