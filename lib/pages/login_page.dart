import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.ButtomBarRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 255, 255, 255),
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/image/login_1image.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 10, 15),
                      child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Username cannot be empty!");
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 10, 15),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Password cannot be empty!");
                          } else if (value.length < 6) {
                            return ("Password length should be at east 6!");
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Material(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 180),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.blue,
                                )
                              : Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),

                          // decoration: BoxDecoration(
                          //  color: Colors.deepPurpleAccent,
                          // shape: changeButton?BoxShape.circle:BoxShape.rectangle,

                          // ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        child: Text(
                          "Forget Password?",
                        ),
                        style: TextButton.styleFrom(
                          minimumSize: Size(
                            150,
                            50,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.ForgotRoute);
                        }),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "New Here? ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                            ),
                            // textAlign: TextAlign.left,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.RegisterRoute);
                            },
                            child: Text(
                              " Register Now",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.blue),
                              //  textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
