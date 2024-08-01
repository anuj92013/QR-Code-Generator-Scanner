import 'package:flutter/material.dart';
import 'package:qr_code_scanner/generate_qr.dart';
import 'package:qr_code_scanner/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget{
  const HomePage ({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("QR Code Scanner and Generator"),backgroundColor: Colors.blueGrey,),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScanQRCode(),));
              });
              }, child: Text("Scan QR Code")),

            SizedBox(height: 40,),
            
            ElevatedButton(onPressed: () {
                setState((){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateQRCode(),));
                });
              }, child: Text('Generate QR Code')),
            
          ],
        ),
      ),


    );
  }
}
