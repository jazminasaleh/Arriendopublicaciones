import 'package:flutter/cupertino.dart';
//*Guarda la ubicacion obtenida de pg ubicacion
class UbicacionController {
  late BuildContext context;

  TextEditingController ubicacionController = new TextEditingController();

  Future init(BuildContext context) async {
    this.context = context;
  }

  void ubicacion() {
    String ubicacion = ubicacionController.text;
  }
}
