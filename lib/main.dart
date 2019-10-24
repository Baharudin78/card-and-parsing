import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("card dan parsing"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              card(icon: Icons.home,teks: "home",warna: Colors.blueAccent,),
              card(icon: Icons.settings,teks: "setting",warna: Colors.greenAccent,),
              card(icon: Icons.place,teks: "lokasi",warna: Colors.amberAccent,),
              card(icon: Icons.favorite,teks: "favorite",warna: Colors.redAccent,),
             
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  card({this.icon,this.warna,this.teks});
  final String teks;
  final IconData icon;
  final Color warna;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(icon,size : 50,color: warna),
            Text(teks,style: TextStyle(fontSize: 20.0),)
          ],
        ),
      )
      
    );
  }
}



