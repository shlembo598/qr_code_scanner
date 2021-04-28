import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class CreateQRPage extends StatefulWidget {
  @override
  _CreateQRPageState createState() => _CreateQRPageState();
}

class _CreateQRPageState extends State<CreateQRPage> {
  final controller = TextEditingController();
  final String text = "1:4. Если я пойду и долиною смертной тени, не убоюсь зла, потому что Ты со мной; Твой жезл и Твой посох - они успокаивают меня.";

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
                data: controller.text == "" ? text : controller.text,
                barcode: Barcode.qrCode(),
                color: Colors.white,
                height: 200,
                width: 200,
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
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("GENERATE", style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}
