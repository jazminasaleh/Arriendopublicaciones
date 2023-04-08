import 'package:apparriendospublicaciones/src/pages/publicaciones/inicio_publicaciones_page.dart';
import 'package:apparriendospublicaciones/src/provider/publicar_inmueble.dart';
import 'package:apparriendospublicaciones/src/services/notificaciones_services.dart';
import 'package:flutter/material.dart';
import 'package:apparriendospublicaciones/src/utils/colors.dart' as utils;
import 'package:provider/provider.dart';

void main() => runApp(AppState());

//*estados de la aplicacion
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PublicarProvider())
      ],
      child: MyApp(),
    );
  }
}
//*La parte de las rutas de la aplicacion
//*que ruta inicia
//*tema
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Arriendos',
      initialRoute: 'inicioPublicaciones',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            elevation: 0, backgroundColor: utils.Colors.fondoOscuro),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: utils.Colors.ocre,
            ),
      ),
      routes: {
        'inicioPublicaciones': (BuildContext context) => InicioPublicaciones(),
      },
      scaffoldMessengerKey: NotificacionesService.mesnajeKey,
    );
  }
}
