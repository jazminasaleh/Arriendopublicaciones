import 'dart:async';

import 'package:apparriendospublicaciones/src/pages/publicaciones/galeria_imagenes.dart';
import 'package:apparriendospublicaciones/src/pages/ubicacion/ubicacion.dart';
import 'package:flutter/material.dart';
import 'package:apparriendospublicaciones/src/utils/colors.dart' as utils;
import 'package:google_maps_flutter/google_maps_flutter.dart';

//*pagina descripcion de publicaciones
class DescripcionPublicaciones extends StatefulWidget {
  List slides;
  String direccion;
  String barrio;
  String precio;
  List iconosDetalles;
  List nombreDeatlles;
  List iconosRestricciones;
  List nombreRestricciones;
  String descripcion;
  DescripcionPublicaciones(
      {super.key,
      required this.direccion,
      required this.barrio,
      required this.precio,
      required this.slides,
      required this.iconosDetalles,
      required this.nombreDeatlles,
      required this.iconosRestricciones,
      required this.nombreRestricciones,
      required this.descripcion});

  @override
  State<DescripcionPublicaciones> createState() =>
      _DescripcionPublicacionesState();
}

class _DescripcionPublicacionesState extends State<DescripcionPublicaciones> {
  Completer<GoogleMapController> _controller = Completer();
  UbicacionController _ubicacionController = new UbicacionController();
  @override
  Widget build(BuildContext context) {
    final CameraPosition puntoInicial = CameraPosition(
        target: LatLng(5.703595, -72.943689), zoom: 15, tilt: 60);
    Set<Marker> markers = new Set<Marker>();
    markers.add(
      new Marker(
        markerId: MarkerId('universidad'),
        position: LatLng(5.704476, -72.941981),
      ),
    );
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.direccion,
                style: const TextStyle(
                    fontSize: 25,
                    color: utils.Colors.blanco,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.barrio,
                style: const TextStyle(
                    fontSize: 18,
                    color: utils.Colors.blanco,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color.fromARGB(221, 52, 52, 52),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Galeria',
                style: TextStyle(
                    fontSize: 25,
                    color: utils.Colors.blanco,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GaleriaImagenes()),
                    );
                  },
                  child: const Text(
                    'Ver todo',
                    style: TextStyle(color: utils.Colors.ocre, fontSize: 15),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          _galeria(slides: widget.slides),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                'Detalles',
                style: TextStyle(
                    fontSize: 25,
                    color: utils.Colors.blanco,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          _detalles(
              iconoDetalles: widget.iconosDetalles,
              nombreDetalles: widget.nombreDeatlles),
          Row(
            children: const [
              Text(
                'Restricciones',
                style: TextStyle(
                    fontSize: 25,
                    color: utils.Colors.rojo,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          _restricciones(
            iconoRestricciones: widget.iconosRestricciones,
            nombreRetricciones: widget.nombreRestricciones,
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.53),
            child: const Text(
              'Descripción',
              style: TextStyle(
                  fontSize: 25,
                  color: utils.Colors.blanco,
                  fontWeight: FontWeight.w500),
            ),
          ),
          _descripcion(descripcion: widget.descripcion),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: const [
              Text(
                'Ubicación',
                style: TextStyle(
                    fontSize: 25,
                    color: utils.Colors.blanco,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 350,
            width: 350,
            child: GoogleMap(
              myLocationButtonEnabled: true,
              markers: markers,
              mapType: MapType.normal,
              initialCameraPosition: puntoInicial,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          navigationBar()
        ],
      ),
    ));
  }
}
//*La parte inferior de la pagina
//*Donde se puede ver el precio y la informacion de contacto
class navigationBar extends StatelessWidget {
  const navigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: utils.Colors.fondoOscuro,
        items: [
          new BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.money,
                size: 35,
              ),
              onPressed: () {},
            ),
            label: '\$450.000',
          ),
          new BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.phone,
                size: 35,
                color: utils.Colors.grisClaro,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        contentPadding: const EdgeInsets.all(0),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              InkWell(
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Colors.grey)),
                                  ),
                                  child: Row(
                                    children: const [
                                       Icon(
                                        Icons.phone,
                                        color: utils.Colors.ocre,
                                      ),
                                      SizedBox(width: 5,),
                                        Text(
                                          '322 5989663',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                                  FontWeight.w500),
                                        
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                    decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color: Colors.grey)),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.whatsapp,
                                        color: utils.Colors.ocre,
                                      ),
                                      Text(
                                          'https://web.whatsapp.com/',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                                  FontWeight.w500),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.email,
                                        color: utils.Colors.ocre,
                                      ),
                                      Text(
                                          'correo@gmail.com',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                                  FontWeight.w500),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            label: '',
          ),
        ]);
  }
}

//*Lista de galeria de imagenes
class _galeria extends StatelessWidget {
  const _galeria({
    Key? key,
    required this.slides,
  }) : super(key: key);

  final List slides;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: slides.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      width: 140,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: slides[index],
                    );
                  }))
        ],
      ),
    );
  }
}

//*Lista de detalles de la publicacion
class _detalles extends StatelessWidget {
  const _detalles({
    Key? key,
    required this.iconoDetalles,
    required this.nombreDetalles,
  }) : super(key: key);

  final List iconoDetalles;
  final List nombreDetalles;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: iconoDetalles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 100,
                        width: 90,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                iconoDetalles[index],
                                const SizedBox(
                                  height: 5,
                                ),
                                nombreDetalles[index]
                              ],
                            )
                          ],
                        ));
                  }))
        ],
      ),
    );
  }
}

//*Lista de restricciones de la publicacion
class _restricciones extends StatelessWidget {
  const _restricciones({
    Key? key,
    required this.iconoRestricciones,
    required this.nombreRetricciones,
  }) : super(key: key);

  final List iconoRestricciones;
  final List nombreRetricciones;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: iconoRestricciones.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 100,
                        width: 90,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                iconoRestricciones[index],
                                const SizedBox(
                                  height: 5,
                                ),
                                nombreRetricciones[index]
                              ],
                            )
                          ],
                        ));
                  }))
        ],
      ),
    );
  }
}

//*Descripcion general de la publicacion
class _descripcion extends StatelessWidget {
  _descripcion({
    required this.descripcion,
  });
  String descripcion;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                descripcion,
                style:
                    const TextStyle(fontSize: 18, color: utils.Colors.blanco),
                textAlign: TextAlign.justify,
              )
            ],
          )
        ],
      ),
    );
  }
}
