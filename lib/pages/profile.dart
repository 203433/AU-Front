import 'package:flutter/material.dart';

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
            profile(),
            SizedBox( height: 20,),
            navBarProfile(),
            SizedBox( height: 40,),
            tableBadges(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.route),
            label: 'Route',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'User',
          ),
        ],
      ),
    );
  }
}

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27'),
        ),
        Text("Millenium Day", style: TextStyle(fontSize: 26),),
        Text("1,300 XP", style: TextStyle(fontSize: 20, color: Colors.grey[500]!)),
      ],
    );
  }
}

class navBarProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Container(
      width: 365,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Colors.white60,
        ),
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[800]!.withOpacity(0.29),
            offset: const Offset(-2,3),
            blurRadius: 10,
          ),
        ],
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(child: Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
              ),
              child: Center(child: Text("Insignias"))),),
          Expanded(child: Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
              ),

              child: Center(child: Text("Top tuxmaper", style: TextStyle(color: Colors.black.withOpacity(0.3) ),))),),
          Expanded(child: Container(
              height: 30,

              child: Center(child: Text("Estadistica", style: TextStyle(color: Colors.black.withOpacity(0.3) ),))),),
        ],
      ),
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
          badges(),
          Divider(),
          Row(
            children: [
              Container(
                  width: 120,
                  height: 60,
                  child: Image.asset("images/Leyenda.png",scale: 5,)
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Master"),
                  Text("Mas de 50 correcciones en rutas", style: TextStyle(color: Colors.black.withOpacity(0.3) ),),
                ],
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                  width: 120,
                  height: 60,
                  child: Image.asset("images/Master.png",scale: 5,)
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Leyenda"),
                  Text("20 rutas agregadas", style: TextStyle(color: Colors.black.withOpacity(0.3) ),),
                ],
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                  width: 120,
                  height: 60,
                  child: Image.asset("images/Platino.png",scale: 5,)
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Platino"),
                  Text("5 rutas autorizadas", style: TextStyle(color: Colors.black.withOpacity(0.3) ),),
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}

class badges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 60,
          child: Image.asset("images/Supremo.png",scale: 5,) ,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Supremo", style: TextStyle(color: Colors.black),),
            Text("Mas de 50 rutas subidas",
              style: TextStyle(color: Colors.black.withOpacity(0.3) ),),
          ],
        )
      ],
    );
  }
}