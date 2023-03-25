import 'package:flutter/material.dart';
import 'package:frontend/modules/bottom_nav.dart';
import 'package:frontend/screens/editor_rutas.dart';

void main() => runApp(const PaginaInicio());

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    filaInicial(),
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
      ),
    );
  }

  Container filaInicial() {
    return Container(
      color: const Color.fromRGBO(196, 196, 196, 0.37),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Corrige, agrega y gana puntos',
            style: TextStyle(
                color: Color(0xff0B72B5),
                fontSize: 26,
                fontWeight: FontWeight.w700,
                fontFamily: "Asap"),
          ),
        ],
      ),
    );
  }

  Container filaTuxmaper() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/a2.png'),
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
          child: const Text(
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
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Ingresar',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 154, 255, 1),
                ),
              ),
            )),
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
