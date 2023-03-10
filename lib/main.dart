import 'package:flutter/material.dart';
import 'package:shada_banking/screens/auth/install_page.dart';
import 'package:shada_banking/screens/auth/languageScreen.dart';
import 'package:shada_banking/screens/auth/sign_in/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SignIn(),
      routes: {
        InstallPage.route:(context)=>const InstallPage(),
        LanguageScreen.routes:(context)=>const LanguageScreen(),
      },
    );
  }
}
