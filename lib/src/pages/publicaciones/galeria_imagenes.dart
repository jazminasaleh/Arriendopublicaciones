import 'package:flutter/material.dart';
import 'package:apparriendospublicaciones/src/utils/colors.dart' as utils;
//*Se muestra todas las imagenes del inmmueble
class GaleriaImagenes extends StatelessWidget {
  const GaleriaImagenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utils.Colors.fondoOscuro,
      appBar: AppBar(
        title: const Text('Galeria'),
      ),
    );
  }
}
