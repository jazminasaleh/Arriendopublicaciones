import 'package:flutter/material.dart';
import 'package:apparriendospublicaciones/src/utils/colors.dart' as utils;

import '../../widgets/slidesShow.dart';

//*Pagina de listas ya sea de favoritos o de sugernecias
class ListasPage extends StatelessWidget {
  final List lista;
  final String titulo;

  ListasPage({super.key, required this.lista, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utils.Colors.fondoOscuro,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          titulo,
          style: const TextStyle(fontSize: 25),
        ),
       
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.90,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => SidesShow(
                              slides: lista[index].imagenes,
                              direccion: lista[index].direccion, 
                              barrio: lista[index].barrio, 
                              precio: lista[index].precio, 
                              iconosDetalles: lista[index].iconosDetalle, 
                              nombreDeatlles: lista[index].nombreDetalle, 
                              iconosRestricciones: lista[index].iconosRestricciones, 
                              nombreRestricciones: lista[index].nombreRestricciones, 
                              descripcion: lista[index].descripcion,
                            ) 
                          ),
                        );
                      },
                      child: Container(
                        height:  MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width*0.80,
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: utils.Colors.azulOscuro,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                               Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width:  MediaQuery.of(context).size.width*0.25,
                                  height: MediaQuery.of(context).size.height*0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                    opacity: 0.50,
                                    image: AssetImage(
                                      lista[index].iamgen
                                    ),
                                    fit: BoxFit.cover,
                                  )
                                ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children:[Text( lista[index].direccion,style: const TextStyle(color: utils.Colors.blanco,fontSize: 16,fontWeight: FontWeight.w500),maxLines: 3, textAlign: TextAlign.center,)] ),
                              Text(lista[index].barrio,style: const TextStyle(fontSize: 15, color: utils.Colors.blanco),),
                              Text('\$${lista[index].precio}',style: const TextStyle(color: utils.Colors.ocre,fontSize: 20,fontWeight: FontWeight.w600),)
                            ],
                          ),],
                        ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
