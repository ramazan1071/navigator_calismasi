import 'package:flutter/material.dart';
import 'package:navigator_calismasi/y_sayfa.dart';

class BSayfa extends StatefulWidget {
  const BSayfa({Key? key}) : super(key: key);

  @override
  State<BSayfa> createState() => _BSayfaState();
}

class _BSayfaState extends State<BSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("B Sayfa"),

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
