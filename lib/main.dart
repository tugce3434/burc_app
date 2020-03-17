import 'package:burc_app/burc_detay.dart';
import 'package:burc_app/test.dart';
import 'package:flutter/material.dart';
import 'burc_liste.dart';


void main() => runApp(MyApps());

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Center(child: Text("fhffgf"),),
      title: "Burc Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi" ,
      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari = settings.name.split("/");
        if(pathElemanlari[1] == 'burcDetay'){
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari
          [2])));
        }
        return null;

      },

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

    );
  }
}
