import 'package:flutter/material.dart';
import 'package:navigator_calismasi/b_sayfa.dart';

class ASayfa extends StatefulWidget {
  const ASayfa({Key? key}) : super(key: key);

  @override
  State<ASayfa> createState() => _ASayfaState();
}

class _ASayfaState extends State<ASayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Sayfa"),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const BSayfa()));
            }, child: const Text("B Sayfasına git")),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
