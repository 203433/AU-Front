import 'package:flutter/material.dart';
import 'package:frontend/pages/widgetsProfile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 30,
              alignment: Alignment.topRight,
              child:Icon(Icons.settings_outlined),
            ),
            profilePhoto(name: "MilleniumDay",),
            SizedBox( height: 20,),
            navBarProfile(),
            SizedBox( height: 40,),
            tableBadges(),
          ],
        ),
      ),
      bottomNavigationBar: navigationExample(),
    );
  }
}

class tableBadges extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 365,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Colors.white60,
        ),
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[800]!.withOpacity(0.29),
            offset: const Offset(-2,3),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          badges(image:"images/Supremo.png" , name:"Supremo" , info:"Mas de 50 rutas subidas" ,),
          Divider(),
          badges(image:"images/Master.png" , name:"Master" , info:"Mas de 50 correciones en rutas" ,),
          Divider(),
          badges(image:"images/Leyenda.png" , name:"Leyenda" , info:"20 rutas agregadas" ,),
          Divider(),
          badges(image:"images/Platino.png" , name:"Platino" , info:"5 rutas autorizadas" ,),
        ],
      ),
    );
  }
}

class badges extends StatelessWidget {
  const badges({Key? key, required this.image, required this.name, required this.info}) : super(key: key);
  final String image;
  final String name;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 120,height: 60, child: Image.asset(image,scale: 5,),),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(name, style: TextStyle(color: Colors.black),),
            Text(info, style: TextStyle(color: Colors.black.withOpacity(0.3) ),),
          ],
        )
      ],
    );
  }
}
