import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

import 'package:testproject/pages/mainpage.dart';

import 'providers/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xfff1f1f1),
          useMaterial3: true,
        ),
        home: const MainPage(),
      ),
    );
  }
}
