import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:pakek_qrcode/homescreen.dart';

class WebViewScreen extends StatelessWidget {
  String qrData;
  WebViewScreen(this.qrData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webview"),
      ),
      body: WebView(
        initialUrl: qrData,
      ),
    );
  }
}
