import 'dart:async';
import 'package:apparriendospublicaciones/src/pages/ubicacion/ubicacion_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:apparriendospublicaciones/src/utils/colors.dart' as utils;

import '../../widgets/button.dart';

//*pagina donde el usuario puede digitar su ubicacion y ver un mapa
class UbicacionPage extends StatefulWidget {
  const UbicacionPage({super.key});

  @override
  State<UbicacionPage> createState() => _UbicacionPageState();
}
//*para observar el mapa se consumio la api de google maps
//*Marker: es utilizado para marcar donde queda la  UPTC seccional Sogamoso
class _UbicacionPageState extends State<UbicacionPage> {
  Completer<GoogleMapController> _controller = Completer();
  UbicacionController _ubicacionController = new UbicacionController();
  @override
  Widget build(BuildContext context) {
    final CameraPosition puntoInicial = CameraPosition(
      target: LatLng(5.704476, -72.941981),
      zoom: 10,
      tilt: 60,
      
    );
    Set<Marker> markers = new Set<Marker>();
    markers.add(
      new Marker(
        markerId: MarkerId('universidad'),
        position: LatLng(5.704476, -72.941981),
      ),
    );
    return Scaffold(
      backgroundColor: utils.Colors.fondoOscuro,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          
          },
        ),
        title: const Text('Ubicación'),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () async {
                    final GoogleMapController controller =
                        await _controller.future;
                    controller.animateCamera(CameraUpdate.newCameraPosition(
                        const CameraPosition(
                            target: LatLng(5.703595, -72.943689),
                            zoom: 15,
                            tilt: 60)));
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 35,
                    color: utils.Colors.ocre,
                  )),
              const Text(
                'UPTC',
                style: TextStyle(fontSize: 15, color: utils.Colors.blanco),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
          child: GestureDetector(
             onTap: (){
             final FocusScopeNode focus = FocusScope.of(context);
            if (!focus.hasPrimaryFocus && focus.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
            child: Container(
              height: MediaQuery.of(context).size.height*0.90,
              color: utils.Colors.fondoOscuro,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
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
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Form(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Container(
                            height: 64,
                            decoration: BoxDecoration(
                                color: utils.Colors.grisMedio,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: _ubicacionController.ubicacionController,
                              autocorrect: false,
                              keyboardType: TextInputType.streetAddress,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Su dirección',
                                labelText: 'Ubicación',
                                prefixIcon: Icon(
                                  Icons.location_on_rounded,
                                  size: 30,
                                ),
                                iconColor: Color(0xff3A4750),
                                 labelStyle: TextStyle(
                                  color: Color(0xff3A4750),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                                )
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  
                  SizedBox(height: MediaQuery.of(context).size.height*0.20,),
                  ButtonApp(
                    onpress: _ubicacionController.ubicacion,
                    direccion: 'perfil',
                    texto: 'Guardar'
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                ]),
              ),
            ),
          ),
      ),
    );
  }
}
