import 'package:flutter/material.dart';
import 'package:navigator_calismasi/anasayfa.dart';

class YSayfa extends StatefulWidget {
  const YSayfa({Key? key}) : super(key: key);

  @override
  State<YSayfa> createState() => _YSayfaState();
}

class _YSayfaState extends State<YSayfa> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Geri tuşu tıklandı");
    Navigator.of(context).popUntil((route) => route.isFirst);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Y Sayfa"),
        leading: IconButton(onPressed: (){
          print("AppBar geri tuşu tıklandı");
          Navigator.of(context).popUntil((route) => route.isFirst);
        },icon: const Icon(Icons.arrow_back),),

      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child:  Column(
            children: [
              Spacer(),
              ElevatedButton(onPressed: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
                print("Elevated Butona basıldı");
              }, child: const Text("AnaSayfaya git")),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
