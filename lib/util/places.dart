import 'package:flutter/material.dart';
import 'package:tambo/generated/l10n.dart';

class Place {

  static getPlaces(BuildContext context) {
    return [
  {
    "name": S.of(context).nameKirk,
    "img": "assets/mapa.png",
    "price": S.of(context).priceKirk,
    "location": S.of(context).locationKirk,
    "details": S.of(context).detailsKirk,
    "imgs":[
      {
        "img": "assets/1.jpeg",
      },{
        "img": "assets/2.jpeg",
      },{
        "img": "assets/3.jpeg",
      }
    ],
    "url":S.of(context).urlKirk
  },
  {
    "name": S.of(context).nameCanari,
    "img": "assets/culturas.jpg",
    "price": r"$100/night",
    "location": "Lisbon, Portugal",
    "details": S.of(context).detailsCanari,
    "imgs":[
      {
        "img": "assets/1.jpeg",
      },{
        "img": "assets/2.jpeg",
      },{
        "img": "assets/3.jpeg",
      }
    ],
    "url":S.of(context).urlKirk

  },
  {
    "name": S.of(context).nameVestimenta,
    "img": "assets/vestimenta.jpg",
    "price": r"$100/night",
    "location": "Paris, France",
    "details": S.of(context).detailsvestimenta,
    "imgs":[
      {
        "img": "assets/1.jpeg",
      },{
        "img": "assets/2.jpeg",
      },{
        "img": "assets/3.jpeg",
      }
    ],
    "url":S.of(context).urlKirk
  },
  {
    "name": S.of(context).nameArtesanias,
    "img": "assets/manualidades.jpg",
    "price": r"$100/night",
    "location": "Rome, Italy",
    "details": S.of(context).detailsArtesanias,
    "imgs":[
      {
        "img": "assets/1.jpeg",
      },{
        "img": "assets/2.jpeg",
      },{
        "img": "assets/3.jpeg",
      }
    ],
    "url":S.of(context).urlKirk
  },
  {
    "name": S.of(context).nameGastronomia,
    "img": "assets/gastronomia.jpg",
    "price": r"$100/night",
    "location": "Madrid, Spain",
    "details": S.of(context).detailsGastronomia,
    "imgs":[
      {
        "img": "assets/1.jpeg",
      },{
        "img": "assets/2.jpeg",
      },{
        "img": "assets/3.jpeg",
      }
    ],
    "url":S.of(context).urlKirk
  },
      {
        "name": S.of(context).nameLeyenda,
        "img": "assets/leyendas.jpg",
        "price": S.of(context).priceKirk,
        "location": S.of(context).locationKirk,
        "details": S.of(context).detailsLeyenda,
        "imgs":[
          {
            "img": "assets/1.jpeg",
          },{
            "img": "assets/2.jpeg",
          },{
            "img": "assets/3.jpeg",
          }
        ],
        "url":S.of(context).urlKirk
      },
      {
        "name": S.of(context).nameMedicina,
        "img": "assets/medicina.jpg",
        "price": S.of(context).priceKirk,
        "location": S.of(context).locationKirk,
        "details": S.of(context).detailsMedicina,
        "imgs":[
          {
            "img": "assets/1.jpeg",
          },{
            "img": "assets/2.jpeg",
          },{
            "img": "assets/3.jpeg",
          }
        ],
        "url":S.of(context).urlKirk
      },
      {
        "name": S.of(context).nameKilla,
        "img": "assets/killa.jpg",
        "price": S.of(context).priceKirk,
        "location": S.of(context).locationKirk,
        "details": S.of(context).detailsKilla,
        "imgs":[
          {
            "img": "assets/1.jpeg",
          },{
            "img": "assets/2.jpeg",
          },{
            "img": "assets/3.jpeg",
          }
        ],
        "url":S.of(context).urlKirk
      }
];
  }
}