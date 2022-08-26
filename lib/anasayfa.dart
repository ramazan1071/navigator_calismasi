import 'package:flutter/material.dart';
import 'package:navigator_calismasi/a_sayfa.dart';
import 'package:navigator_calismasi/x_sayfa.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnaSayfa"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ASayfa()));
            }, child: const Text("A Sayfasına git")),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const XSayfa()));
            }, child: const Text("X Sayfasına git")),
          ],
        ),
      ),
    );
  }
}
