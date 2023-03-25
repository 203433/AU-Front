import 'package:flutter/widgets.dart' show ChangeNotifier;
import 'package:frontend/models/servicio_models.dart';
import 'package:frontend/models/servicio_semana.dart';

class ControllerEditorRutas extends ChangeNotifier {
  ServicioModels? modeloServicio;
  ServicioSemana? modeloSemana;
  ControllerEditorRutas() {
    _init();
  }
  void _init() {
    modeloServicio = ServicioModels(
      serviceWifi: false,
      serviceCar: false,
      serviceMusic: false,
      serviceCard: false,
      serviceAcces: false,
    );
    modeloSemana = ServicioSemana(
      dayLu: false,
      dayMa: false,
      dayMi: false,
      dayJu: false,
      dayVi: false,
      daySa: false,
      dayDo: false,
    );
  }

  void changeServiceWifi() {
    modeloServicio!.serviceWifi = !modeloServicio!.serviceWifi!;
    notifyListeners();
  }

  void changeServiceCar() {
    modeloServicio!.serviceCar = !modeloServicio!.serviceCar!;
    notifyListeners();
  }

  void changeServiceMusic() {
    modeloServicio!.serviceMusic = !modeloServicio!.serviceMusic!;
    notifyListeners();
  }

  void changeServiceCard() {
    modeloServicio!.serviceCard = !modeloServicio!.serviceCard!;
    notifyListeners();
  }

  void changeServiceAcces() {
    modeloServicio!.serviceAcces = !modeloServicio!.serviceAcces!;
    notifyListeners();
  }

  void changeDayLu() {
    modeloSemana!.dayLu = !modeloSemana!.dayLu!;
    notifyListeners();
  }

  void changeDayMa() {
    modeloSemana!.dayMa = !modeloSemana!.dayMa!;
    notifyListeners();
  }

  void changeDayMi() {
    modeloSemana!.dayMi = !modeloSemana!.dayMi!;
    notifyListeners();
  }

  void changeDayJu() {
    modeloSemana!.dayJu = !modeloSemana!.dayJu!;
    notifyListeners();
  }

  void changeDayVi() {
    modeloSemana!.dayVi = !modeloSemana!.dayVi!;
    notifyListeners();
  }

  void changeDaySa() {
    modeloSemana!.daySa = !modeloSemana!.daySa!;
    notifyListeners();
  }

  void changeDayDo() {
    modeloSemana!.dayDo = !modeloSemana!.dayDo!;
    notifyListeners();
  }
}
