import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() {
  runApp(const AplikasiKu());
}

class AplikasiKu extends StatelessWidget {
  const AplikasiKu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test_qrcode",
      home: HomeScreen(),
    );
  }
}
