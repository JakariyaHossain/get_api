import 'package:flutter/material.dart';
import 'package:my_pars/home_page.dart';
import 'package:my_pars/provider/user_provider.dart';
import 'package:provider/provider.dart';

class JasonParse extends StatelessWidget {
  const JasonParse({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
