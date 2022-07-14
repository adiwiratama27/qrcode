import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:webview_flutter/webview_flutter.dart';

import 'webview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? qrData = "";

  Future scanQR() async {
    String? scanResult = await scanner.scan();
    setState(() {
      qrData = scanResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  scanQR();
                },
                child: Text('Scan QR Code'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => WebViewScreen(qrData!)
                  ));
                },
                child: Text(qrData!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
