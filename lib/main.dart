import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/pages/create_qr__page.dart';
import 'package:qr_code_scanner/pages/home_page.dart';
import 'package:qr_code_scanner/pages/scan_qr__page.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        '/HomePage' :(context) => HomePage(),
        '/CreateQRCode' :(context) => CreateQRPage(),
        '/ScanQRCode' :(context) => ScanQRPage(),
      },
      initialRoute: '/HomePage',
    ));
