import 'package:flutter/material.dart';
import 'package:shop_all_day/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Shop All Day',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(
            primary: const Color.fromRGBO(48, 49, 121, 1), // Primary color in RGB with const
            secondary: const Color.fromRGBO(237, 121, 102, 1), // Secondary color in RGB with const
          ),
          scaffoldBackgroundColor: const Color.fromRGBO(250, 229, 223, 1), 
        ),
        home: const LoginPage(),
      ),
    );
  }
}

