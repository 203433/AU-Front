import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: "Asap"),
      home: const Scaffold(body: inicioPagina()),
    );
  }
}

// ignore: camel_case_types
class inicioPagina extends StatelessWidget {
  const inicioPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Corrige, agrega y gana puntos',
          style: TextStyle(
              color: Color(0xff0B72B5),
              fontSize: 26,
              fontWeight: FontWeight.w700,
              fontFamily: "Asap"),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(196, 196, 196, 0.37),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  filaTuxmaper(),
                  filaTextoTuxmaper(),
                  filaDescripcionTuxmaper(),
                  filaTextoIngresar(),
                  filaFinal(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container filaTuxmaper() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/a2.png"),
          alignment: Alignment(0, -.001),
        ),
      ),
      child: Image.asset(
        'assets/a1.png',
      ),
    );
  }

  Row filaDescripcionTuxmaper() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: 300,
          child: Text(
            'Queremos premiar a nuestros usuarios que nos apoyen a corregir y agregar las rutas del transporte colectivo.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(117, 117, 117, 1),
            ),
          ),
        ),
      ],
    );
  }

  Row filaTextoTuxmaper() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Se un Tuxmaper',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(249, 168, 38, 1),
          ),
        ),
      ],
    );
  }

  Row filaTextoIngresar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Text(
            'INGRESAR',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 154, 255, 1),
            ),
          ),
        ),
      ],
    );
  }

  Container filaFinal() {
    return Container(
        child: (Image.asset(
      'assets/a4.png',
      fit: BoxFit.fill,
    )));
  }
}
