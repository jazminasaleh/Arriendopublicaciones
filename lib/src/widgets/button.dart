import 'package:flutter/material.dart';
import 'package:apparriendospublicaciones/src/utils/colors.dart' as utils;

//*Boton que se usa en todo el loguin
//*ejemplo en iniciar
class ButtonApp extends StatelessWidget {
  String direccion;
  String texto;
  Function onpress;
  String correo;

  ButtonApp(
      {required this.onpress,
      required this.direccion,
      required this.texto,
      this.correo = '', Future<Null> Function()? onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpress();
        if (direccion == '') return;
        Navigator.popAndPushNamed(context, direccion);
      },
      child: Container(
        decoration: BoxDecoration(
          color: utils.Colors.ocre,
          borderRadius: BorderRadius.circular(35),
        ),
        height: 64,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
