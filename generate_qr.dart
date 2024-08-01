import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget{
  const GenerateQRCode({Key? key}) : super(key: key);

  @override
  _GenerateQRCodeState createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {

  TextEditingController urlController = TextEditingController(); //taking input from the users

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('Generate QR Code'),backgroundColor: Colors.blueAccent,),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
                if(urlController.text.isNotEmpty)
                  QrImageView( data: urlController.text, size: 200.0,),  // Use a double value for size

              SizedBox(height: 10,),
              Container(
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter your data',
                  ),
                ),
              ),
              SizedBox(height: 10,),

              ElevatedButton(onPressed: (){
                setState(() {

                });
              }, child: Text('Generate QR Code'),)



            ],
          )
        ),
      ),



    );
  }
}