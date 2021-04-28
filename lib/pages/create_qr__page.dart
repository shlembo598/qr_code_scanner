import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class CreateQRPage extends StatefulWidget {
  @override
  _CreateQRPageState createState() => _CreateQRPageState();
}

class _CreateQRPageState extends State<CreateQRPage> {
  final controller = TextEditingController();

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
              BarcodeWidget(
                data: controller.text ?? "Hello",
                barcode: Barcode.qrCode(),
                color: Colors.white,
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: "Input your text",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide(color: Colors.teal)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("GNERATE"))
            ],
          ),
        ),
      ),
    );
  }
}
