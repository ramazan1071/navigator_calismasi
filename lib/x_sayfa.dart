import 'package:flutter/material.dart';
import 'package:navigator_calismasi/y_sayfa.dart';

class XSayfa extends StatefulWidget {
  const XSayfa({Key? key}) : super(key: key);

  @override
  State<XSayfa> createState() => _XSayfaState();
}

class _XSayfaState extends State<XSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("X Sayfa"),

      ),
      body: Center(
        child:  Column(
          children: [
            Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => YSayfa()));
            }, child: const Text("Y Sayfasına git")),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
