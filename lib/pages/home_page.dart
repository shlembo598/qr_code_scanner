import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("QR Code Scanner"))),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  onTap: () {
                    Navigator.pushNamed(context, '/CreateQRCode');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.teal[600],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    width: 180,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.qr_code,
                          size: 100,
                        ),
                        Text(
                          "Generate QR-Code",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  onTap: () {
                    Navigator.pushNamed(context, '/ScanQRCode');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.teal[600],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    width: 180,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.qr_code_scanner,
                          size: 100,
                        ),
                        Text(
                          "Scan QR-Code",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
