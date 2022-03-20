import 'package:flutter/material.dart';
import 'package:myapp/pages/Maps.dart';
import 'package:myapp/pages/SenderPage.dart';
import 'package:myapp/pages/buttom_bar.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/registerpage.dart';
import 'package:myapp/pages/FogotPass.dart';

import 'package:myapp/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      // theme: ThemeMode.light,
      // theme:ThemeData
      // (
      //primarySwatch: Colors.deepPurple,
      //fontFamily: GoogleFonts.lato().fontFamily,
      // ),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(
      //  brightness: Brightness.dark,
      // ),

      // themeMode: ThemeMode.dark,
      //darkTheme: ThemeData(
      //brightness:Brightness.dark,
      // )
      routes: {
        "/": (context) => LoginPage(),
        //"/": (context) => RegisterPage(),
        //"/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.RegisterRoute: (context) => RegisterPage(),
        MyRoutes.ForgotRoute: (context) => FogotPass(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.ButtomBarRoute: (context) => ButtomBar(),
        MyRoutes.SenderRoute: (context) => SenderPage(),
        MyRoutes.MapsRoute: (context) => Maps(),
      },
    );
  }
}
