import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend/controllers/controller_editor_rutas.dart';
import 'package:provider/provider.dart';

class EditorRutas extends StatefulWidget {
  const EditorRutas({super.key});

  @override
  State<EditorRutas> createState() => _EditorRutasState();
}

class _EditorRutasState extends State<EditorRutas> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ControllerEditorRutas()),
      ],
      child: Scaffold(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        appBar: AppBar(
          title: const Text("Editor de rutas"),
        ),
        body: Column(
          children: [
            //Texto
            filaTexto(24, "NUEVA RUTA", Color.fromARGB(255, 0, 0, 0),
                FontWeight.w800, MainAxisAlignment.center),
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    elevation: 2.0,
                    child: campoTexto("texto", "Nombre corto:"))),
            Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    elevation: 2.0,
                    child: campoTexto("texto", "Nombre completo:"))),
            //Texto
            filaTexto(
                19,
                "Servicios con las que cuenta:",
                Color.fromRGBO(117, 117, 117, 1),
                FontWeight.w500,
                MainAxisAlignment.start),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Consumer<ControllerEditorRutas>(
                  builder: (context, controllerEditorRutas, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    botonServicios(
                      "assets/icons/wifi-outlined.svg",
                      controllerEditorRutas.modeloServicio?.serviceWifi,
                      controllerEditorRutas.changeServiceWifi,
                    ),
                    botonServicios(
                      "assets/icons/car-seat-cooler.svg",
                      controllerEditorRutas.modeloServicio?.serviceCar,
                      controllerEditorRutas.changeServiceCar,
                    ),
                    botonServicios(
                      "assets/icons/music-note-outline.svg",
                      controllerEditorRutas.modeloServicio?.serviceMusic,
                      controllerEditorRutas.changeServiceMusic,
                    ),
                    botonServicios(
                      "assets/icons/credit-card-outline.svg",
                      controllerEditorRutas.modeloServicio?.serviceCard,
                      controllerEditorRutas.changeServiceCard,
                    ),
                    botonServicios(
                      "assets/icons/wheelchair-accessibility.svg",
                      controllerEditorRutas.modeloServicio?.serviceAcces,
                      controllerEditorRutas.changeServiceAcces,
                    ),
                  ],
                );
              }),
            ),
            //Texto
            filaTexto(19, "Horarios:", Color.fromRGBO(117, 117, 117, 1),
                FontWeight.w500, MainAxisAlignment.start),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Consumer<ControllerEditorRutas>(
                  builder: (context, controllerEditorRutas, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    botonHorarios(
                        "LU",
                        controllerEditorRutas.modeloSemana?.dayLu,
                        controllerEditorRutas.changeDayLu),
                    botonHorarios(
                        "MA",
                        controllerEditorRutas.modeloSemana?.dayMa,
                        controllerEditorRutas.changeDayMa),
                    botonHorarios(
                      "MI",
                      controllerEditorRutas.modeloSemana?.dayMi,
                      controllerEditorRutas.changeDayMi,
                    ),
                    botonHorarios(
                      "JU",
                      controllerEditorRutas.modeloSemana?.dayJu,
                      controllerEditorRutas.changeDayJu,
                    ),
                    botonHorarios(
                      "VI",
                      controllerEditorRutas.modeloSemana?.dayVi,
                      controllerEditorRutas.changeDayVi,
                    ),
                    botonHorarios(
                      "SA",
                      controllerEditorRutas.modeloSemana?.daySa,
                      controllerEditorRutas.changeDaySa,
                    ),
                    botonHorarios(
                      "DO",
                      controllerEditorRutas.modeloSemana?.dayDo,
                      controllerEditorRutas.changeDayDo,
                    ),
                  ],
                );
              }),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 5, 0),
                      child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          elevation: 2.0,
                          child: campoTexto("texto", "Nombre corto:"))),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(5, 20, 20, 0),
                      child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          elevation: 2.0,
                          child: campoTexto("texto", "Nombre corto:"))),
                ),
              ],
            ),
            filaTexto(
                19,
                "Lugares importantes por donde pase:",
                Color.fromRGBO(117, 117, 117, 1),
                FontWeight.w500,
                MainAxisAlignment.start),
          ],
        ),
      ),
    );
  }

//Forma para optimizar el codigo y no depender de tantas variables
//
  ElevatedButton botonHorarios(String dia, bool? controller, [Function? func]) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          backgroundColor: controller!
              ? Color.fromRGBO(11, 114, 181, 1)
              : Color.fromARGB(255, 255, 255, 255),
          elevation: 3,
          minimumSize: Size(46, 46)),
      child: Text(dia,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: controller ? Colors.white : Color.fromARGB(255, 0, 0, 0))),
      onPressed: () {
        if (func != null) {
          func();
        }
      },
    );
  }

  Container botonServicios(String routeIcon, bool? controller,
      [Function? func]) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: controller!
              ? Color.fromRGBO(11, 114, 181, 1)
              : Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(0),
        child: IconButton(
          splashRadius: 13,
          icon: SvgPicture.asset(routeIcon,
              color:
                  controller ? Colors.white : Color.fromRGBO(218, 218, 218, 1)),
          onPressed: () {
            if (func != null) {
              func();
            }
          },
        ));
  }

  Container filaTexto(double fontsize, String texto, Color personalColor,
      FontWeight fw, MainAxisAlignment alig) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Row(
        mainAxisAlignment: alig,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texto,
            style: TextStyle(
              fontSize: fontsize,
              fontWeight: fw,
              color: personalColor,
            ),
          ),
        ],
      ),
    );
  }

  TextField campoTexto(String texto, String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(218, 218, 218, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color.fromARGB(0, 255, 255, 255),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(0, 255, 255, 255),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
