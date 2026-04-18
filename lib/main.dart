import 'package:flutter/material.dart';
import 'package:pdf_viewer/home_page.dart';
import 'package:pdf_viewer/papers/subject_Screen.dart';
import 'package:pdf_viewer/webview_pdf_view.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LGU Notes',
      theme: ThemeData(primarySwatch: Colors.green),
      home: SubjectScreen()
    );
  }
}