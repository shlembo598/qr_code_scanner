import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQRPage extends StatefulWidget {
  @override
  _ScanQRPageState createState() => _ScanQRPageState();
}

class _ScanQRPageState extends State<ScanQRPage> {
  String qrCode = "Unknown";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create QR-Code"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 20),
              Text( "Scan Result",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text( "$qrCode",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: () => scanQRCode(),
                  child: Text("SCAN",style: TextStyle(fontSize: 20)))
            ],
          ),
        ),
      ),
    );
  }

  scanQRCode() async{
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      if (!mounted) return;
      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException{
      qrCode = "Failed to get paltform version.";
    }
  }
}
