// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_prueba/api/peticiones_api.dart';
import 'package:flutter_prueba/controllers/games_controller.dart';
import 'package:flutter_prueba/models/games_model.dart';
import 'package:flutter_prueba/pages/datos_pages.dart';
import 'package:flutter_prueba/pages/home_pages.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => PeticionesApi());
  Get.lazyPut(() => GamesController());
  Get.lazyPut(() => GamesModel());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Api Ricky and Morty',
        initialRoute: '/Home',
        routes: {
          '/Home': (context) => HomePage(),
          '/Data': (context) => DatosPages(),
        });
  }
}
