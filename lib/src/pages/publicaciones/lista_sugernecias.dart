
//*Lista de inmuebles sugeridos
import 'package:apparriendospublicaciones/src/utils/colors.dart' as utils;
import 'package:flutter/material.dart';

class ListaSugernecias {
  final String direccion;
  final String barrio;
  final String precio;
  final String iamgen;
  List <Widget> imagenes;
  List<Widget> iconosDetalle;
  List<Widget> nombreDetalle;
  List<Widget> iconosRestricciones;
  List<Widget> nombreRestricciones;
  final String descripcion;

  ListaSugernecias({
    required this.direccion, 
    required this.barrio, 
    required this.precio,
    required this.iamgen, 
    required this.imagenes,
    required this.iconosDetalle,
    required this.nombreDetalle,
    required this.iconosRestricciones,
    required this.nombreRestricciones,
    required this.descripcion
  });
}

class ListaLlenaSugerencias {
  final listaSugerencias = <ListaSugernecias>[
    ListaSugernecias(
        direccion: 'Calle 47 # 14-25',
        barrio: 'Santa Barbara 1',
        precio: '350.000',
        iamgen: 'assets/publicaciones/pub1.jpg', 
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub1.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
        iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Carrear 10 # 10-78',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub2.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
       
    ListaSugernecias(
        direccion: 'Carrera 18 # 104-125',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub3.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub3.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Calle 47 # 14-25',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub4.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub4.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Calle 47 # 14-25',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub5.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub5.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Calle 47 # 14-25',
        barrio: 'Santa Barbara 1',
        precio: '350.000',
        iamgen: 'assets/publicaciones/pub1.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub1.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Carrear 10 # 10-78',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub2.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Carrera 18 # 104-125',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub3.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub3.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Calle 47 # 14-25',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub4.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub4.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
    ListaSugernecias(
        direccion: 'Calle 47 # 14-25',
        barrio: 'Santa Barbara 2',
        precio: '340.000',
        iamgen: 'assets/publicaciones/pub5.jpg',
        imagenes: [Image(image:  AssetImage('assets/publicaciones/pub5.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')), Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),Image(image:  AssetImage('assets/publicaciones/pub2.jpg')),],
         iconosDetalle: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ],
        nombreDetalle: [
          Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        iconosRestricciones: [
          Icon(Icons.house,size: 35,color: utils.Colors.ocre,),
          Icon(Icons.wifi, size: 35, color: utils.Colors.ocre),
          Icon(Icons.bathroom, size: 35, color: utils.Colors.ocre),
          Icon(Icons.pets, size: 35, color: utils.Colors.rojo)
        ], 
        nombreRestricciones: [
           Text(
            'Apartamento',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '50MB',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            '2 baños',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          ),
          Text(
            'Mascotas',
            style: TextStyle(color: utils.Colors.blanco, fontSize: 10),
          )
        ], 
        descripcion: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ames enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
  ];
}
