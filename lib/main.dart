import "package:flutter/material.dart";
import 'datascreen.dart';
import "show.dart";
import "trainstatus.dart";

void main(){
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Mytrain",
      home:HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          title:Text("Mytrain"),
        ),

        body:Center(
          child: FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Show()));
          },
              child:Text("Start")),
        )


    );
  }

}
