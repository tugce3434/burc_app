import 'package:burc_app/burc_liste.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'models/burc.dart';

class BurcDetay extends StatefulWidget {
  int gelenIndex;


  BurcDetay(this.gelenIndex);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Burc secilenBurc;
  Color baskinRenk;
  PaletteGenerator paletteGenerator;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secilenBurc = BurcListesi.tumBurclar[widget.gelenIndex];

    baskinRengiBul();
  }

  void baskinRengiBul(){

    Future<PaletteGenerator> fPaletteGenerator=PaletteGenerator.fromImageProvider(AssetImage("images/"+secilenBurc.burcBuyukResim));
    fPaletteGenerator.then((value) {
      paletteGenerator=value;

      setState(() {
        baskinRenk=paletteGenerator.dominantColor.color;

      });


    }
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      primary: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: baskinRenk != null ? baskinRenk : Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/"+
                secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text(
                  secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  //borderRadius: BorderRadius.all(radius)
                ),
                child: SingleChildScrollView(
            child:  Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
          ),
              ),
          ),
        ],
      ),
    );
  }
}
