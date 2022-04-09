import 'package:get/get.dart';

class PeticionesApi extends GetConnect {
  Future<Response> httpGet({required String url}) async {
    final response = await get(
        'https://rickandmortyapi.com/api/character/3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20');
    return response;
  }
}
