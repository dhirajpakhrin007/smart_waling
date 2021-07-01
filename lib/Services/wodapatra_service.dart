import 'package:flutter/cupertino.dart';
import 'package:smart_waling/constants/icons.dart';

class WodaData {
  int id;
  String title;
  IconData icons;
  String data;
  WodaData(this.id, this.title, this.icons, this.data);
}

final List<WodaData> wadaData = [
  WodaData(
    1,
    "घर/जग्गा/बाटो",
    MyFlutterApp.wadapatra_gharjagga,
    " ",
  ),
  WodaData(
    2,
    "पञ्जीकरण",
    MyFlutterApp.sif_panjikaran,
    " ",
  ),
  WodaData(
    3,
    "सेवा/सुविधा",
    MyFlutterApp.wadapatra_sewasubidha,
    " ",
  ),
  WodaData(
    3,
    "सेवा/सुविधा",
    MyFlutterApp.wadapatra_sewasubidha,
    " ",
  ),
  WodaData(
    4,
    "व्यापार/उद्योग/चौपाया/व्यवसाय",
    MyFlutterApp.wadapatra_taxlaw,
    " ",
  ),
  WodaData(
    5,
    "कर/कानुन",
    MyFlutterApp.wadapatra_eduhealth,
    " ",
  ),
  WodaData(
    6,
    "शिक्षा/स्वास्थ्य/विदेश",
    MyFlutterApp.wadapatra_industry,
    " ",
  ),
  WodaData(
    7,
    "बसोबास/बसाइँसराई",
    MyFlutterApp.other,
    " ",
  ),

  // WodaData(
  //   1,
  //   "घर/जग्गा/बाटो",
  //   MyFlutterApp.wadapatra_gharjagga,
  //   " ",
  // ),
  // WodaData(
  //   2,
  //   "पञ्जीकरण",
  //   MyFlutterApp.sif_panjikaran,
  //   " ",
  // ),
  // WodaData(
  //   3,
  //   "सेवा/सुविधा",
  //   MyFlutterApp.wadapatra_sewasubidha,
  //   " ",
  // ),
  // WodaData(
  //   4,
  //   "व्यापार/उद्योग/चौपाया/व्यवसाय",
  //   MyFlutterApp.wadapatra_taxlaw,
  //   " ",
  // ),
  // WodaData(
  //   5,
  //   "कर/कानुन",
  //   MyFlutterApp.wadapatra_eduhealth,
  //   " ",
  // ),
  // WodaData(
  //   6,
  //   "शिक्षा/स्वास्थ्य/विदेश",
  //   MyFlutterApp.wadapatra_industry,
  //   " ",
  // ),
  // WodaData(
  //   7,
  //   "बसोबास/बसाइँसराई",
  //   MyFlutterApp.other,
  //   " ",
  // ),
  // WodaData(
  //   7,
  //   "बसोबास/बसाइँसराई",
  //   MyFlutterApp.other,
  //   " ",
  // ),
];
