import 'package:flutter/material.dart';
import 'package:modelhandling/screen/homepage.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/product_screen.dart';
import 'package:modelhandling/screen/signup_screen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://gjzjyahozvezwajibmme.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdqemp5YWhvenZlendhamlibW1lIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI3MDU1NTIsImV4cCI6MjA4ODI4MTU1Mn0.X5ydvWV-i7NWOzzYC-9_NueAUAYOO8i74b4qNkHCDws",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Heads or Tails?