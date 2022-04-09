import 'dart:convert';

import 'package:flutter_prueba/models/games_model.dart';
import 'package:flutter_prueba/api/peticiones_api.dart';
import 'package:get/get.dart';

class GamesController extends GetxController {
  @override
  void onInit() {
    obtener();
    super.onInit();
  }

  List<GamesModel> games = [];
  final peticionesApi = Get.find<PeticionesApi>();
  late GamesModel show;

  Future obtener() async {
    final response = await peticionesApi.httpGet(
      url:
          'https://rickandmortyapi.com/api/character/3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20',
    );
    final listaGames = response.body;
    games.addAll(List<GamesModel>.from(
        listaGames.map((mapGames) => GamesModel.fromJsonMap(mapGames))));
    update();
  }
}
