import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_prueba/controllers/games_controller.dart';
import 'package:flutter_prueba/widgets/text_rich_widget.dart';

class DatosPages extends StatelessWidget {
  DatosPages({Key? key}) : super(key: key);
  final gamescontroller = Get.find<GamesController>().show;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(6),
        crossAxisSpacing: 6.0,
        crossAxisCount: 1,
        mainAxisSpacing: 6.0,
        children: [
          FadeInImage(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            placeholder: const AssetImage('assets/images/loading.gif'),
            image: NetworkImage(gamescontroller.image!),
            fit: BoxFit.contain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextRichWidget(
                titulo: "Name: ",
                descripcion: gamescontroller.name!,
              ),
              TextRichWidget(
                titulo: "Status: ",
                descripcion: gamescontroller.status!,
              ),
              TextRichWidget(
                titulo: "Specie: ",
                descripcion: gamescontroller.species!,
              ),
              TextRichWidget(
                titulo: "Origin: ",
                descripcion: gamescontroller.origin!,
              ),
              TextRichWidget(
                titulo: "URL: ",
                descripcion: gamescontroller.url!,
              ),
              TextRichWidget(
                titulo: "Location: ",
                descripcion: gamescontroller.location!,
              ),
              TextRichWidget(
                titulo: "Episode: ",
                descripcion: gamescontroller.episode!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
