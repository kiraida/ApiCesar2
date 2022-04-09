import 'package:flutter/material.dart';
import 'package:flutter_prueba/controllers/games_controller.dart';
import 'package:flutter_prueba/models/games_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ims = Get.find<GamesModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ricky and Morty'),
      ),
      body: GetBuilder<GamesController>(
        builder: (gamesController) {
          return Container(
            width: double.infinity,
            child: Swiper(
              itemBuilder: (context, i) {
                final carrusel = gamesController.games[i];
                gamesController.show = carrusel;
                FadeInImage(
                    placeholder: const AssetImage('assets/images/loading.gif'),
                    image: NetworkImage(carrusel.image!),
                    fit: BoxFit.fill);
                return context.widget;
              },
              itemCount: gamesController.games.length,
              itemWidth: 400,
              scale: 0.9,
              pagination: new SwiperPagination(),
              layout: SwiperLayout.STACK,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  /* Widget _swiper() {
    return GetBuilder<GamesController>(
      builder: (gamesController) {
        return Container(
        );
      },
    );
  }*/
}


/*
return Scaffold(
      body: GetBuilder<GamesController>(builder: (games) {
        Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Card(
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    )),
                elevation: 20,
                shadowColor: Colors.pink,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Swiper(
                        FadeInimage(context)
                        itemCount: 10,
                        itemWidth: 400,
                        scale: 0.9,
                        pagination: SwiperPagination(),
                        layout: SwiperLayout.STACK,
                      ),
                    ),

                    /*  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(games.show = ),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          
                          
                        ],
                      ),
                    )*/
                  ],
                )),
          ),
        );
      }),
    );

 */
