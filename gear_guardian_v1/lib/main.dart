import 'package:flutter/material.dart';
import 'package:gear_guardian_v1/Pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
